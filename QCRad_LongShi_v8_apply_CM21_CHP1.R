# /* Copyright (C) 2022 Athanasios Natsis <natsisthanasis@gmail.com> */
#' ---
#' title:       "QCRad methodology apply."
#' author:      "Natsis Athanasios"
#' institute:   "AUTH"
#' affiliation: "Laboratory of Atmospheric Physics"
#' abstract:    "Data quality for radiation measurements as described by
#'               CN Long and Y Shi, September 2006, DOE/SC-ARM/TR-074.
#'               - The QCRad Value Added Product Surface
#'               Radiation Measurement Quality Control Testing Including
#'               Climatology_Long2006.pdf"
#'
#' documentclass: article
#' classoption:   a4paper,oneside
#' fontsize:      10pt
#' geometry:      "left=0.5in,right=0.5in,top=0.5in,bottom=0.5in"
#'
#' link-citations:  yes
#' colorlinks:      yes
#'
#' header-includes:
#' - \usepackage{caption}
#' - \usepackage{placeins}
#' - \captionsetup{font=small}
#'
#' output:
#'   bookdown::pdf_document2:
#'     number_sections:  no
#'     fig_caption:      no
#'     keep_tex:         no
#'     latex_engine:     xelatex
#'     toc:              yes
#'     fig_width:        8
#'     fig_height:       5
#'   html_document:
#'     toc: true
#'     fig_width:  9
#'     fig_height: 4
#'   pdf_document:
#' date: "`r format(Sys.time(), '%F')`"
#' ---
#'
#' **Source code: [github.com/thanasisn/RAD_QC](https://github.com/thanasisn/RAD_QC)**
#'
#' ### Notes ###
#'
#' Run for each year and apply Quality control on radiation data based on ID.
#'
#' The chosen levels and filters have to be evaluated with the available data.
#'
#' reads: QCRad_LongShi_v8_id_*
#'
#' exports:
#'
#+ echo=F, include=T


####_  Document options _####
knitr::opts_chunk$set(echo       =  FALSE   )
knitr::opts_chunk$set(comment    = ""       )
# knitr::opts_chunk$set(dev        = "pdf"   )
knitr::opts_chunk$set(dev        = "png"    )
knitr::opts_chunk$set(out.height = "30%"    )
knitr::opts_chunk$set(fig.align  = "center" )
knitr::opts_chunk$set(cache      =  TRUE   )
# knitr::opts_chunk$set(fig.pos    = '!h'    )


####_  Set environment  _####
Sys.setenv(TZ = "UTC")
tic <- Sys.time()
Script.Name <- "./QCRad_LongShi_v8_apply_CM21_CHP1.R"
if (!interactive()) {
    pdf(    file = paste0("~/RAD_QC/RUNTIME/", basename(sub("\\.R$",".pdf", Script.Name))))
    sink(   file = paste0("~/RAD_QC/RUNTIME/", basename(sub("\\.R$",".out", Script.Name))), split = TRUE)
    filelock::lock(paste0("~/RAD_QC/RUNTIME/", basename(sub("\\.R$",".loc", Script.Name))), timeout = 100)
}

library(scales)
library(data.table)
library(pander)
source("~/CODE/FUNCTIONS/R/trig_deg.R")
source("~/RAD_QC/Functions_write_data.R")


####  Variables init  ####
DATA_BASE     <- "~/DATA/Broad_Band/QCRad_LongShi/"
IN_PREFIX     <- "LAP_QCRad_LongShi_v8_id_CM21_CHP1_"
cachedata     <- "~/RAD_QC/temp_data.Rds"

####  Execution control  ####

TEST_04      <- FALSE
TEST_08      <- FALSE

# TEST_04      <- TRUE
TEST_08      <- TRUE


DO_PLOTS      <- TRUE
if (interactive()) {
    DO_PLOTS  <- FALSE
}


####  Load all data  ####
fileslist <- list.files(path    = DATA_BASE,
                        pattern = paste0(IN_PREFIX, ".*.Rds"),
                        full.names = TRUE)
fileslist <- sort(fileslist)
## read data or load cached
if (!file.exists(cachedata)) {
    DATA <- data.table()
    for (afl in fileslist) {
        tmp  <- readRDS(afl)
        DATA <- rbind(DATA, tmp, fill = TRUE)
        rm(tmp)
    }
    write_RDS(DATA, cachedata, clean = TRUE)
} else {
    DATA <- readRDS(cachedata)
    cat("\n\n**USING CACHED DATA!!**\n\n")
}



#'
#' ### INPUT DATA
#'
#' **Data range: `r paste(range(DATA$Date), collapse = " to ")`**
#'
#+ echo=F, include=T
#'
pp <- data.frame(basename(fileslist), file.mtime(fileslist))
names(pp) <- c("Filename", "File mtime")
pander(pp, caption = "Input files")
#+ echo=F, include=T


## . . Limits definitions  ####
#'
#' ### Some filters definitions
#'
#+ echo=T, include=T
QS <- list()
QS$sun_elev_min     <-   -2 * 0.103 # 0. Drop all data when sun is below this point
QS$sun_elev_no_neg  <-    0         # 0. Don't allow negative values below this sun angle
QS$glo_SWdn_min     <-   -4         # 1. MIN Physically Possible Limits
QS$dir_SWdn_min     <-   -4         # 1. MIN Physically Possible Limits
QS$glo_SWdn_min_ext <-   -2         # 2. MIN Extremely Rare Minimum Limits
QS$dir_SWdn_min_ext <-   -2         # 2. MIN Extremely Rare Minimum Limits
QS$dif_rati_min     <-    0.001     # 3. (12) extra comparison to check data
QS$dif_rati_max     <-    1.01      # 3. (13) extra comparison to check data 1
QS$clim_lim_C3      <-    0.81      # 4. Direct Climatological (configurable) Limit first level
QS$clim_lim_D3      <-    0.90      # 4. Direct Climatological (configurable) Limit second level
QS$clim_lim_C1      <-    1.15      # 4. Global Climatological (configurable) Limit first level
QS$clim_lim_D1      <-    1.35      # 4. Global Climatological (configurable) Limit second level
QS$ClrSW_a          <- 1050.5       # 5. Tracker off test Clear Sky factor a
QS$ClrSW_b          <-    1.095     # 5. Tracker off test Clear Sky factor b
QS$ClrSW_lim        <-    0.85      # 5. Tracker off test Threshold
QS$dir_glo_invert   <-    3         # 8. Test for inverted values: DIRhor - GLBhor > lim[%]
QS$dir_glo_glo_off  <-    5         # 8. Test for inverted values apply for GLBhor > offset
QS$CL_idx_max       <-    1.3       # 9. Clearness index test
QS$CL_idx_min       <-   -0.001     # 9. Clearness index test
#+ echo=F, include=T





####  1. PHYSICALLY POSSIBLE LIMITS PER BSRN  ####
keys  <- c("Physical possible limit min (5)", "Physical possible limit max (6)")
#'
#' \newpage
#' ## 1. PHYSICALLY POSSIBLE LIMITS PER BSRN
#'
#' Drop all data with flag: `r paste(keys)`.
#'
#+ echo=F, include=T

## find
sel_d <- DATA$QCF_DIR_01 %in% keys
sel_g <- DATA$QCF_GLB_01 %in% keys
## remove
DATA$wattDIR[sel_d] <- NA
DATA$wattGLB[sel_g] <- NA
DATA$QCF_DIR_01     <- NULL
DATA$QCF_GLB_01     <- NULL
## info
cat(c(sum(sel_d, na.rm = T), " Direct Records removed with:", keys), ".\n\n")
cat(c(sum(sel_g, na.rm = T), " Global Records removed with:", keys), ".\n\n")
if (sum(sel_d, sel_g) > 0) {
    ## more code to add
    cat("\n\n**CHECK OMITTED DATA**\n\n")
}
#' -----------------------------------------------------------------------------
#+ echo=F, include=T





####  4. Climatological (configurable) Limits  ####
keys  <- c("Second climatological limit (16)",
           "First climatological limit (17)")
#'
#' \newpage
#' ## 4. Climatological (configurable) Limits
#'
#'
#' Limits the maximum expected irradiance based on climatological
#' observations levels and the value of TSI.
#'
#' Some hits on first limits are expected and need manual evaluation.
#'
#' Hits on second limit should be problematic data.
#'
#' For GHI this may limit the radiation enhancement cases.
#'
#' Exclusions should be done case by case
#'

if (TEST_04) {
    cat(paste("\n## 4. Climatological (configurable) Limits.\n\n"))

    QS$clim_lim_C3 <- 0.77
    QS$clim_lim_D3 <- 0.81
    QS$clim_lim_C1 <- 1.14
    QS$clim_lim_D1 <- 1.32

    ## Criteria
    ## . . Direct ----------------------------------------------------------####
    DATA[, Dir_First_Clim_lim := TSIextEARTH_comb * QS$clim_lim_C3 * cosde(SZA)^0.2 + 10]
    DATA[wattDIR > Dir_First_Clim_lim,
         QCF_DIR_04.1 := "First climatological limit (17)"]

    DATA[, Dir_Secon_Clim_lim := TSIextEARTH_comb * QS$clim_lim_D3 * cosde(SZA)^0.2 + 15]
    DATA[wattDIR > Dir_Secon_Clim_lim,
         QCF_DIR_04.2 := "Second climatological limit (16)"]

    ## . . Global ----------------------------------------------------------####
    DATA[, Glo_First_Clim_lim := TSIextEARTH_comb * QS$clim_lim_C1 * cosde(SZA)^1.2 + 60]
    DATA[wattGLB > Glo_First_Clim_lim,
         QCF_GLB_04.1 := "First climatological limit (17)"]
    DATA[, Glo_Secon_Clim_lim := TSIextEARTH_comb * QS$clim_lim_D1 * cosde(SZA)^1.2 + 60]
    DATA[wattGLB > Glo_Secon_Clim_lim,
         QCF_GLB_04.2 := "Second climatological limit (16)"]

    ## Plots

    hist(DATA[, wattDIR - Dir_First_Clim_lim] , breaks = 100,
         main = "Departure Direct from first climatological limti")

    hist(DATA[, wattDIR - Dir_Secon_Clim_lim] , breaks = 100,
         main = "Departure Direct from second climatological limit")

    hist(DATA[, wattGLB - Glo_First_Clim_lim] , breaks = 100,
         main = "Departure Direct from first climatological limti")

    hist(DATA[, wattGLB - Glo_Secon_Clim_lim] , breaks = 100,
         main = "Departure Direct from second climatological limit")

    pander(table(DATA$QCF_GLB_04.1))
    pander(table(DATA$QCF_GLB_04.2))
    pander(table(DATA$QCF_DIR_04.1))
    pander(table(DATA$QCF_DIR_04.2))

    if (DO_PLOTS) {

        ## test direct first limit
        temp1 <- DATA[ !is.na(QCF_DIR_04.1) ]
        for (ad in sort(unique(as.Date(temp1$Date)))) {
            pp <- DATA[ as.Date(Date) == ad, ]
            if (any(!is.na(pp$wattDIR))) {
                ylim <- range(pp$Dir_First_Clim_lim, pp$wattDIR, na.rm = T)
                plot(pp$Date, pp$wattDIR, "l", col = "blue",
                     ylim = ylim, xlab = "", ylab = "wattDIR")
                title(paste("4.1", as.Date(ad, origin = "1970-01-01")))
                ## plot limits
                lines(pp$Date, pp$Dir_First_Clim_lim, col = "pink")
                lines(pp$Date, pp$Dir_Secon_Clim_lim, col = "red" )
                ## mark offending data
                points(pp[wattDIR > Dir_First_Clim_lim, Date],
                       pp[wattDIR > Dir_First_Clim_lim, wattDIR],
                       col = "pink", pch = 1)
            }
        }

        ## test direct second limit
        temp2 <- DATA[ !is.na(QCF_DIR_04.2) ]
        # extra <- sample(unique(as.Date(DATA[!is.na(wattDIR), Date])),5)
        for (ad in sort(unique(c(as.Date(temp2$Date))))) {
            pp <- DATA[ as.Date(Date) == ad, ]
            if (any(!is.na(pp$wattDIR))) {
                ylim <- range(pp$Dir_Secon_Clim_lim, pp$wattDIR, na.rm = T)
                plot(pp$Date, pp$wattDIR, "l", col = "blue",
                     ylim = ylim, xlab = "", ylab = "wattDIR")
                title(paste("4.2", as.Date(ad, origin = "1970-01-01")))
                ## plot limits
                lines(pp$Date, pp$Dir_First_Clim_lim, col = "pink")
                lines(pp$Date, pp$Dir_Secon_Clim_lim, col = "red" )
                ## mark offending data
                points(pp[wattDIR > Dir_First_Clim_lim, Date],
                       pp[wattDIR > Dir_First_Clim_lim, wattDIR],
                       col = "red", pch = 1)
            }
        }

        ## test global first limit
        temp1 <- DATA[ !is.na(QCF_GLB_04.1) ]
        for (ad in sort(unique(as.Date(temp1$Date)))) {
            pp <- DATA[ as.Date(Date) == ad, ]
            if (any(!is.na(pp$wattGLB))) {
                ylim <- range(pp$Glo_First_Clim_lim, pp$wattGLB, na.rm = T)
                plot(pp$Date, pp$wattGLB, "l", col = "green",
                     ylim = ylim, xlab = "", ylab = "wattGLB")
                title(paste("4.1", as.Date(ad, origin = "1970-01-01")))
                ## plot limits
                lines(pp$Date, pp$Glo_First_Clim_lim, col = "pink")
                lines(pp$Date, pp$Glo_Secon_Clim_lim, col = "red" )
                ## mark offending data
                points(pp[wattGLB > Glo_First_Clim_lim, Date],
                       pp[wattGLB > Glo_First_Clim_lim, wattGLB],
                       col = "pink", pch = 1)
            }
        }

        ## test global second limit
        temp2 <- DATA[ !is.na(QCF_GLB_04.2) ]
        for (ad in sort(unique(c(as.Date(temp2$Date))))) {
            pp <- DATA[ as.Date(Date) == ad, ]
            if (any(!is.na(pp$wattGLB))) {
                ylim <- range(pp$Glo_Secon_Clim_lim, pp$wattGLB, na.rm = T)
                plot(pp$Date, pp$wattGLB, "l", col = "green",
                     ylim = ylim, xlab = "", ylab = "wattGLB")
                title(paste("4.2", as.Date(ad, origin = "1970-01-01")))
                ## plot limits
                lines(pp$Date, pp$Glo_First_Clim_lim, col = "pink")
                lines(pp$Date, pp$Glo_Secon_Clim_lim, col = "red" )
                ## mark offending data
                points(pp[wattGLB > Glo_Secon_Clim_lim, Date],
                       pp[wattGLB > Glo_Secon_Clim_lim, wattGLB],
                       col = "red", pch = 1)
            }
        }

    }

    # ## find
    # sel_d <- DATA$QCF_DIR_04.1 %in% keys | DATA$QCF_DIR_04.2 %in% keys
    # sel_g <- DATA$QCF_GLB_04.1 %in% keys | DATA$QCF_GLB_04.2 %in% keys
    # ## remove
    # DATA$wattDIR[sel_d] <- NA
    # DATA$wattGLB[sel_g] <- NA
    # DATA$QCF_DIR_04.1   <- NULL
    # DATA$QCF_DIR_04.2   <- NULL
    # DATA$QCF_GLB_04.1   <- NULL
    # DATA$QCF_GLB_04.2   <- NULL
    # ## remove empty entries
    # DATA <- DATA[!(is.na(wattDIR) & is.na(wattGLB)), ]
    # ## info
    # cat(c(sum(sel_d, na.rm = T),
    #       " Direct Records removed with:",
    #       keys), ".\n\n")
    # cat(c(sum(sel_g, na.rm = T),
    #       " Global Records removed with:",
    #       keys), ".\n\n")
    DATA$Dir_First_Clim_lim <- NULL
    DATA$Glo_First_Clim_lim <- NULL
    DATA$Dir_Secon_Clim_lim <- NULL
    DATA$Glo_Secon_Clim_lim <- NULL
}
#' -----------------------------------------------------------------------------
#+ echo=F, include=T




####  8. Test for inverted values  ####
keys <- c("Direct > global hard (15)","Direct > global soft (14)")
#'
#' \newpage
#' ## 8. Test for inverted values
#'
#' When the Direct on horizontal level is greater than a %
#' from the Global.
#'
#' This denotes obstacles on the morning mostly, or very low
#' signals when Sun is near the horizon. And possible
#' cases of Instrument windows cleaning.
#'
#' Probably these value should be removed for CS when occurring on low
#' elevation angles.
#'
#' Additional criteria is needed for the data drop
#'
#+ echo=F, include=T

QS$dir_glo_invert  <- 5  ## per cent
QS$dir_glo_glo_off <- 5  ## global minimum

if (TEST_08) {

    cat(paste("\n8. Inversion test.\n\n"))

    ## Criteria
    ## . . Both ------------------------------------------------------------####

    DATA[, Relative_diffuse := 100 * (wattHOR - wattGLB) / wattGLB ]
    DATA[ is.infinite(Relative_diffuse), Relative_diffuse := NA]

    DATA[Relative_diffuse > QS$dir_glo_invert  &
                  wattGLB > QS$dir_glo_glo_off ,
         QCF_BTH_08.1 := "Direct > global soft (14)" ]

    DATA[Relative_diffuse > QS$dir_glo_invert ,
         QCF_BTH_08.2 := "Direct > global hard (15)" ]

    ## Plots

    hist(DATA[ !is.na(QCF_BTH_08.1), Relative_diffuse], breaks = 100)
    hist(DATA[ !is.na(QCF_BTH_08.2), Relative_diffuse], breaks = 100)

    hist(DATA[ Relative_diffuse > QS$dir_glo_invert & Elevat  > 3,                  Elevat])
    hist(DATA[ Relative_diffuse > QS$dir_glo_invert & Elevat  > 3,                  wattHOR - wattGLB])
    hist(DATA[ Relative_diffuse > QS$dir_glo_invert & wattGLB > QS$dir_glo_glo_off, Elevat])
    hist(DATA[ Relative_diffuse > QS$dir_glo_invert & wattGLB > QS$dir_glo_glo_off, wattHOR - wattGLB])


    pander(table(DATA$QCF_BTH_08.1))
    pander(table(DATA$QCF_BTH_08.2))

    if (DO_PLOTS) {


        test <- DATA[ !is.na(QCF_BTH_08.1) ]
        xlim <- range( DATA[ Elevat > 0, Azimuth ] )


        for (ad in unique(as.Date(test$Date))) {
            pp   <- DATA[ as.Date(Date) == ad, ]
            ylim <- range(pp$wattGLB, pp$wattHOR, na.rm = T)
            plot( pp$Azimuth, pp$wattHOR, "l",
                  xlim = xlim, ylim = ylim, col = "blue", ylab = "", xlab = "")
            lines(pp$Azimuth, pp$wattGLB, col = "green" )
            title(paste("8.1", as.Date(ad, origin = "1970-01-01")))
            points(pp[!is.na(QCF_BTH_08.1), Azimuth],
                   pp[!is.na(QCF_BTH_08.1), wattHOR],
                   ylim = ylim, col = "blue")
            points(pp[!is.na(QCF_BTH_08.1), Azimuth],
                   pp[!is.na(QCF_BTH_08.1), wattGLB],
                   ylim = ylim, col = "green")
        }

        test <- DATA[ !is.na(QCF_BTH_08.2) ]
        xlim <- range( DATA[ Elevat > 0, Azimuth ] )

        for (ad in unique(as.Date(test$Date))) {
            pp   <- DATA[ as.Date(Date) == ad, ]
            ylim <- range(pp$wattGLB, pp$wattHOR, na.rm = T)
            plot( pp$Azimuth, pp$wattHOR, "l",
                  ylim = ylim, col = "blue", ylab = "", xlab = "")
            lines(pp$Azimuth, pp$wattGLB, col = "green" )
            title(paste("8.2", as.Date(ad, origin = "1970-01-01")))
            points(pp[!is.na(QCF_BTH_08.2), Azimuth],
                   pp[!is.na(QCF_BTH_08.2), wattHOR],
                   ylim = ylim, col = "blue")
            points(pp[!is.na(QCF_BTH_08.2), Azimuth],
                   pp[!is.na(QCF_BTH_08.2), wattGLB],
                   ylim = ylim, col = "green")
        }


        # test <- DATA[ , Relative_diffuse < -200 ]
        # for (ad in unique(as.Date(DATA[test,Date]))) {
        #     pp   <- DATA[ as.Date(Date) == ad, ]
        #     tt   <- pp[, Relative_diffuse < -200 ]
        #     ylim <- range(pp$wattGLB, pp$wattHOR, na.rm = T)
        #     plot( pp$Date, pp$wattHOR, "l",
        #           ylim = ylim, col = "blue", ylab = "", xlab = "")
        #     lines(pp$Date, pp$wattGLB, col = "green" )
        #     title(as.Date(ad, origin = "1970-01-01"))
        #     points(pp[tt, Date],
        #            pp[tt, wattHOR],
        #            ylim = ylim, col = "blue")
        #     points(pp[tt, Date],
        #            pp[tt, wattGLB],
        #            ylim = ylim, col = "green")
        # }

    }

    # ## remove
    # DATA[ QCF_BTH_08 %in% keys, wattGLB := NA ]
    # DATA[ QCF_BTH_08 %in% keys, wattHOR := NA ]
    # DATA[ QCF_BTH_08 %in% keys, wattDIR := NA ]
    # ## info
    # cat(c(DATA[ QCF_BTH_08 %in% keys, .N ], " Global or Direct Records removed with:", keys), ".\n\n")
    # ## remove empty entries
    # DATA <- DATA[!(is.na(wattDIR) & is.na(wattGLB)), ]
    # DATA$QCF_BTH_08 <- NULL
    DATA$Relative_diffuse <- NULL
}
#' -----------------------------------------------------------------------------
#+ echo=F, include=T




####  9. Clearness index test  ####
keys  <- c("Clearness index limit max (19)",
           "Clearness index limit min (20)")
#'
#' \newpage
#' ## 9. Clearness index test
#'
#' Drop all data with flag: `r paste(keys)`.
#'
#' These data are near Elevation 0 and caused by the cos(SZA)
#' kt = GLB / (cos(sza) * TSI)
#' low GLB value end extreme cos(sza) values
#'
#+ echo=F, include=T

if (DO_PLOTS) {
    # levels(DATA$QCF_GLB_09)
    hist(DATA[ QCF_GLB_09 %in% keys,              wattGLB], breaks = 100 )
    hist(DATA[ QCF_GLB_09 %in% keys,              Elevat ], breaks = 100 )
    hist(DATA[ QCF_GLB_09 %in% keys & Elevat > 2, wattGLB], breaks = 100 )
    hist(DATA[ QCF_GLB_09 %in% keys & Elevat > 2, Elevat ], breaks = 100 )

    # test <- DATA[ , .(Min_kt =  min(Clearness_Kt, na.rm = T),
    #                   Max_kt =  max(Clearness_Kt, na.rm = T)),
    #               by = .(Elevat = (Elevat %/% 0.01) * 0.01 ) ]
    # plot(test$Elevat, test$Max_kt)
    # plot(test$Elevat, test$Min_kt)

    # DATA[ Clearness_Kt >  10 , Clearness_Kt := NA]
    # DATA[ Clearness_Kt < -20 , Clearness_Kt := NA]
    # min(DATA$SZA)
    # max(DATA$SZA)
    # cosde(90.00000001)
    # cosde(89.99999999)

    tmp <- DATA[ Elevat < 120 ]
    for (ay in unique(year(tmp$Date))) {
        pp <- tmp[year(tmp$Date) == ay]
        # plot(pp$Azimuth, pp$wattGLB, main = ay, pch = 19, cex = 0.1)
        # points(pp[QCF_GLB_09 %in% keys,Azimuth],
        #      pp[QCF_GLB_09 %in% keys,wattGLB],
        #      pch = 19, cex = 0.2, col = "red")
        ylim = c(-20, 20)
        # plot(pp$Azimuth, pp$Clearness_Kt, main = ay, pch = 19, cex = 0.1, ylim = ylim)
        # points(pp[QCF_GLB_09 %in% keys,Azimuth],
        #        pp[QCF_GLB_09 %in% keys,Clearness_Kt],
        #        pch = 19, cex = 0.2, col = "red")
        #
        # abline(h = QS$CL_idx_max, col = "cyan", lwd = 0.5)
        # abline(h = QS$CL_idx_min, col = "cyan", lwd = 0.5)
        ylim = c(-0.5, 2)
        plot(pp$Elevat, pp$Clearness_Kt,
             main = ay, pch = 19, cex = 0.1,
             ylim = ylim, xlab = "Elevation", ylab = "Clearness index Kt" )
        points(pp[Clearness_Kt > QS$CL_idx_max, Elevat],
               pp[Clearness_Kt > QS$CL_idx_max, Clearness_Kt],
               pch = 19, cex = 0.3, col = "red")
        points(pp[Clearness_Kt < QS$CL_idx_min, Elevat],
               pp[Clearness_Kt < QS$CL_idx_min, Clearness_Kt],
               pch = 19, cex = 0.3, col = "blue")
        abline(h = QS$CL_idx_max, col = "cyan", lwd = 0.5)
        abline(h = QS$CL_idx_min, col = "cyan", lwd = 0.5)
    }
}

## remove
DATA[QCF_GLB_09 %in% keys, wattGLB := NA]
## info
cat(c(DATA[QCF_GLB_09 %in% keys, .N],
      " Global Records removed with:",
      keys), ".\n\n")
## remove empty entries
DATA <- DATA[!(is.na(wattDIR) & is.na(wattGLB)), ]
DATA$QCF_GLB_09 <- NULL
#' -----------------------------------------------------------------------------
#+ echo=F, include=T










#### ~ 6. Rayleigh Limit Diffuse Comparison ~ ####
keys  <- c("Rayleigh diffuse limit (18)")

Rayleigh_diff <- function(SZA, Pressure) {

    source("~/CODE/FUNCTIONS/R/trig_deg.R")

    a    <-   209.3
    b    <-  -708.3
    c    <-  1128.7
    d    <-  -911.2
    e    <-   287.85
    f    <-     0.046725
    mu_0 <- cosde(SZA)

    return( a * mu_0     +
                b * mu_0 ^ 2 +
                c * mu_0 ^ 3 +
                d * mu_0 ^ 4 +
                e * mu_0 ^ 5 +
                f * mu_0 * Pressure )
}

#'
#' \newpage
#' ## 6. Rayleigh Limit Diffuse Comparison
#'
#' Compare inferred diffuse radiation with a modeled value of diffuse,
#' based on SZA and atmospheric pressure.
#'
#' Reasons:
#' - Difference on Sun observation angle due to different instruments location.
#' - Cases of instrument windows cleaning
#'
#' `r print(Rayleigh_diff)`
#'
#+ echo=F, include=T



DATA[ , RaylDIFF := Rayleigh_diff(SZA = SZA, Pressure = pressure) ]


test <- unique(DATA[ wattGLB > 50 &
                    (wattDIF / wattGLB) < 0.8 &
                     wattDIF < (RaylDIFF - 1),  ])

hist(test$Azimuth, breaks = 100)
hist(test$SZA, breaks = 100)

# test <- unique(DATA[ wattGLB > 50 &
#                      (wattDIF / wattGLB) < 0.8 &
#                      wattDIF < (RaylDIFF - 1)  &
#                          SZA < 70,  ])


for (ad in unique(as.Date(test$Date))) {
    pp   <- DATA[ as.Date(Date) == ad, ]

    layout(matrix(c(1,2), 2, 1, byrow = TRUE))
    par(mar = c(2,4,2,1))

    ylim <- range(pp$wattDIF, pp$RaylDIFF, na.rm = T)
    plot( pp$Date, pp$wattDIF, "l",
          ylim = ylim, col = "cyan", ylab = "Diffuse", xlab = "")
    lines(pp$Date, pp$RaylDIFF, col = "red" )
    title(as.Date(ad, origin = "1970-01-01"))
    # par(new = T)

    par(mar = c(2,4,1,1))
    ylim <- range(pp$wattGLB, pp$wattDIR, na.rm = T)
    plot( pp$Date, pp$wattGLB, "l",
          ylim = ylim, col = "green", ylab = "", xlab = "")
    lines(pp$Date, pp$wattDIR, col = "blue" )

    points(pp[wattGLB > 50 & (wattDIF / wattGLB) < 0.8 & wattDIF < (RaylDIFF - 1), Date],
           pp[wattGLB > 50 & (wattDIF / wattGLB) < 0.8 & wattDIF < (RaylDIFF - 1), wattDIR],
           ylim = ylim, col = "red")
    points(pp[wattGLB > 50 & (wattDIF / wattGLB) < 0.8 & wattDIF < (RaylDIFF - 1), Date],
           pp[wattGLB > 50 & (wattDIF / wattGLB) < 0.8 & wattDIF < (RaylDIFF - 1), wattGLB],
           ylim = ylim, col = "red")
    cat("\n")

}






#### ~ Rest of the flags to check ~ ####

wecare <- grep("QCF_DIR_|QCF_GLB_|QCF_BTH_" , names(DATA), value = T )
for (fg in wecare) {
    if (all(is.na(DATA[[fg]]))) {
        DATA[[fg]] <- NULL
    }
}


wecare <- grep("QCF_DIR_|QCF_GLB_|QCF_BTH_" , names(DATA), value = T )

for (fg in wecare) {
    cat(paste(fg),"\n")
    cat(levels(DATA[[fg]]),"\n")
}



# for (fg in wecare) {
#     if (any(!is.na(DATA[[fg]]))) {
#         try(hist( as.numeric( factor(DATA[[fg]]), main = fg)))
#         try(plot(DATA$Date, factor(DATA[[fg]]), main = fg))
#     }
# }
#
#
# #+ echo=F, include=T, results="asis"
# ## loop years and read data
# for (YY in yearSTA:yearEND) {
#
#     cat("\n\n\\FloatBarrier\n\n")
#     cat("\\newpage\n\n")
#     cat("\n## Year:", YY, "\n\n")
#
#


#     #### ~ ~ ~ ~  Data export ~ ~ ~ ~ ##########################################
#     cat(paste("\nExport Data.\n\n"))
#
#     ## . . gather all suspect points for export ----------------------------####
#     # suspect_choose  <- DATA_year$QCF_DIR != "good" | DATA_year$QCF_GLB != "good"
#     # SUS_DATA        <- DATA_year[suspect_choose,]
#     # SUS_DATA        <- SUS_DATA[order(SUS_DATA$Date30),]
#     # SUS_DATA_gather <- rbind(SUS_DATA_gather, SUS_DATA)
#
#     # ## gather all suspect dates for export
#     # daysinfo        <- SUS_DATA[,c("Date30","QCF_DIR","QCF_GLB")]
#     # daysinfo$Day    <- as.Date(daysinfo$Date30)
#     # daysinfo$Date30 <- NULL
#     # daysinfo        <- daysinfo[order(daysinfo$Day),]
#     # daysinfo        <- unique(daysinfo)
#     # daysinfo_gather <- rbind(daysinfo_gather, daysinfo)


# #    ## save data identification
# #    DATA_year <- DATA_year[ DATA_year$Date < LAST_DAY_EXPR , ]
# #    DATA_year <- DATA_year[ DATA_year$Date > PROJECT_START , ]
#
#    ## . . Export main data -------------------------------------------------####
#    if ( !TESTING & dim(DATA_year)[1] > 0 ) {
#        write_RDS(object = DATA_year,
#                  file   = paste0(OUTPUT_BASE, basename(sub("\\.R$","_", Script.Name)),YY))
#    }
#     ##-------------------------------------------------------------------------##
#
#
# #    ##-- Strict output for clear sky use ---------------------------------------
# #    allow <- c( "good", "Possible Direct Obstruction (23)")
# #    sels  <- DATA_year$QCF_DIR %in% allow | DATA_year$QCF_GLB %in% allow
# #    STRICT_data <- DATA_year[sels,]
# #
# #    STRICT_data <- subset(STRICT_data, select = c( -CHP1temp,
# #                                                   -CHP1tempSD,
# #                                                   -CHP1tempUNC,
# #                                                   -chp1TempCF,
# #                                                   -TSIextEARTH_comb
# #                                                   ))
# #
# #    ##-- Export strict data --------------------------------------------------##
# #    if ( !TESTING & dim(STRICT_data)[1] > 0 ) {
# #        myRtools::write_RDS(object = STRICT_data, paste0(OUTPUT_STRICT,YY)) }
# #    ##------------------------------------------------------------------------##
#
# }
#
# # ##-- Export a record of the bad data -----------------------------------------##
# # if (!TESTING) myRtools::write_RDS( SUS_DATA_gather, SUSPECTS_EXP )
# # ##----------------------------------------------------------------------------##
#

#'
#' **END**
#+ include=T, echo=F
tac <- Sys.time()
cat(sprintf("%s %s@%s %s %f mins\n\n",Sys.time(),Sys.info()["login"],Sys.info()["nodename"],Script.Name,difftime(tac,tic,units="mins")))

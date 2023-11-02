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
#'     keep_md:          no
#'     latex_engine:     xelatex
#'     toc:              yes
#'     fig_width:        8
#'     fig_height:       5
#'   html_document:
#'     toc:        true
#'     fig_width:  9
#'     fig_height: 4
#'
#' date: "`r format(Sys.time(), '%F')`"
#'
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
#' reads: QCRad_LongShi_v9_id_*
#'
#' exports:
#'
#' - `Broad_Band/QCRad_LongShi/QCRad_LongShi_v9_apply_CM21_CHP1_YYYY.Rds`
#' - Plots at runtime or render
#'
#' TODO:
#'
#' - plot combination of flag for each point
#' - plot cumulative graphs like the old
#' - Plot daily graphs with all available flags
#'
#+ echo=F, include=T

####_  Document options _####
knitr::opts_chunk$set(echo       =  FALSE   )
knitr::opts_chunk$set(comment    = ""       )
# knitr::opts_chunk$set(dev        = "pdf"   )
knitr::opts_chunk$set(dev        = "png"    )
knitr::opts_chunk$set(out.height = "30%"    )
knitr::opts_chunk$set(fig.align  = "center" )
knitr::opts_chunk$set(cache      =  FALSE   )
# knitr::opts_chunk$set(fig.pos    = '!h'    )


## __ Set environment  ---------------------------------------------------------
Sys.setenv(TZ = "UTC")
tic <- Sys.time()
Script.Name <- "./QCRad_LongShi_v9_apply_CM21_CHP1.R"
lockfile    <- paste0("~/RAD_QC/RUNTIME/",
                      basename(sub("\\.R$",".stopfile", Script.Name)))
if (!interactive()) {
    pdf( file = paste0("~/RAD_QC/RUNTIME/", basename(sub("\\.R$",".pdf", Script.Name))))
    sink(file = paste0("~/RAD_QC/RUNTIME/", basename(sub("\\.R$",".out", Script.Name))), split = TRUE)
}

library(scales)
library(data.table)
library(pander)
source("~/CODE/FUNCTIONS/R/trig_deg.R")
source("~/CODE/R_myRtools/myRtools/R/write_.R")
source("~/CODE/FUNCTIONS/R/execlock.R")

# mylock(lockfile)


####_  Variables init  _####
DATA_BASE <- "~/DATA/Broad_Band/QCRad_LongShi/"
IN_PREFIX <- "LAP_QCRad_LongShi_v9_id_CM21_CHP1_"
cachedata <- "~/RAD_QC/temp_data.Rds"




#### ~ ~ Execution control ~ ~ ####

## use cache data for development only
FORCE_NEW_DATA <- TRUE
# FORCE_NEW_DATA <- FALSE

TEST_01  <- FALSE
TEST_02  <- FALSE
TEST_03  <- FALSE
TEST_04  <- FALSE
TEST_05  <- FALSE
TEST_06  <- FALSE
TEST_07  <- FALSE
TEST_08  <- FALSE
TEST_09  <- FALSE

# TEST_01  <- TRUE  # DEPRECATED
# TEST_02  <- TRUE  # DEPRECATED
# TEST_03  <- TRUE  # DEPRECATED
# TEST_04  <- TRUE  # DEPRECATED
TEST_05  <- TRUE
TEST_06  <- TRUE
# TEST_07  <- TRUE
TEST_08  <- TRUE
TEST_09  <- TRUE

## mostly for daily plots
# DO_PLOTS     <- FALSE
DO_PLOTS     <- TRUE   ## <- too many plots to render
if (interactive()) {
    DO_PLOTS <- FALSE
}

ALL_YEAR <- TRUE
ALL_YEAR <- FALSE


#+ echo=F, include=T
#### ~ ~ Load all data ~ ~ ####
fileslist <- list.files(path    = DATA_BASE,
                        pattern = paste0(IN_PREFIX, ".*.Rds"),
                        full.names = TRUE)
fileslist <- sort(fileslist)
## read data or load cached

if (!ALL_YEAR) {
    cat("\n\n Partial data run ! \n\n")

    select <- paste0("_", c(
        2022,
        2023
    ), ".Rds", collapse = "|"
    )

    fileslist <- grep(select, fileslist, value = TRUE)
    cachedata <- sub("\\.Rds","_partial\\.Rds", cachedata)
}


if (FORCE_NEW_DATA || !file.exists(cachedata)) {
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



## Obstacles definitions
load("~/RAD_QC/Obstacles.Rda")


#'
#' ### INPUT DATA
#'
#' **Data range: `r paste(range(DATA$Date), collapse = " to ")`**
#'
#+ echo=F, include=T
pp <- data.frame(basename(fileslist), file.mtime(fileslist))
names(pp) <- c("Filename", "File mtime")
pander(pp, caption = "Input files")



## . . Limits definitions  ####
#'
#' ### Some filters definitions
#'
#+ echo=T, include=T
QS <- list()
# QS$sun_elev_min    <- -2 * 0.103 # 0. Drop all data when sun is below this point
# QS$sun_elev_no_neg <-  0         # 0. Don't allow negative values below this sun angle







####  5. Tracker is off test  --------------------------------------------------
#' \FloatBarrier
#' \newpage
#' ## 5. Tracker is off test
#'
# This test use a diffuse model will be implemented when one is produced
# and accepted. For now we omit it to protect from over-fitting prior to
# make one such model.
#
#+ echo=TEST_05, include=T
if (TEST_05) {
    cat(paste("\n5. Tracking test.\n\n"))
    ## criteria
    QS$Tracking_min_elev <-    5
    QS$ClrSW_lim         <-    0.85
    QS$glo_min           <-   25
    ## Global Clear SW model
    QS$ClrSW_a           <- 1050.5
    QS$ClrSW_b           <-    1.095
    ## Clear Sky Sort-Wave model
    DATA[, ClrSW_ref2 := ( QS$ClrSW_a / sun_dist ^ 2 ) * cosde(SZA) ^ QS$ClrSW_b ]
    # DATA[, ClrSW_ref1 := TSIextEARTH_comb * cosde(SZA) ^ QS$ClrSW_b ]

    DATA[, QCF_DIR_05 := NA]

    ## . . Direct --------------------------------------------------------------
    DATA[wattGLB     / ClrSW_ref2 > QS$ClrSW_lim &
         DIFF_strict / wattGLB    > QS$ClrSW_lim &
         wattGLB                  > QS$glo_min   &
         Elevat                   > QS$Tracking_min_elev,
         QCF_DIR_05 := "Possible no tracking (24)"]
}

#+ echo=F, include=T, results="asis"
if (TEST_05) {

    cat(pander(table(DATA$QCF_DIR_05, exclude = T)))
    cat("\n\n")

    hist(DATA[, ClrSW_ref2 - wattDIR ], breaks = 100)
    hist(DATA[, wattGLB / ClrSW_ref2 ], breaks = 100)
    hist(DATA[, DIFF_strict / wattGLB], breaks = 100)
    hist(DATA[!is.na(QCF_DIR_05), Elevat], breaks = 100)

    if (DO_PLOTS) {
        tmp <- DATA[ !is.na(QCF_DIR_05), unique(as.Date(Date)) ]
        # tmp <- sample(DATA[!is.na(wattDIR), unique(as.Date(Date))], 10)
        for (ad in sort(tmp)) {
            pp <- DATA[ as.Date(Date) == ad, ]
            ylim <- range(pp$ClrSW_ref2, pp$wattDIR, pp$wattGLB, na.rm = T)
            plot(pp$Date, pp$wattDIR, "l", col = "blue",
                 ylim = ylim, xlab = "", ylab = "wattDIR")
            lines(pp$Date, pp$wattGLB, col = "green")
            title(paste("5_", as.Date(ad, origin = "1970-01-01")))
            ## plot limits
            # lines(pp$Date, pp$ClrSW_ref1, col = "pink")
            lines(pp$Date, pp$ClrSW_ref2, col = "cyan")
            ## mark offending data
            points(pp[!is.na(QCF_DIR_05), Date],
                   pp[!is.na(QCF_DIR_05), wattDIR],
                   col = "red", pch = 1)
        }
    }
    # DATA$ClrSW_ref2 <- NULL
}
#' -----------------------------------------------------------------------------




####  6. Rayleigh Limit Diffuse Comparison  ------------------------------------
#' \FloatBarrier
#' \newpage
#' ## 6. Rayleigh Limit Diffuse Comparison
#'
#' Compare inferred diffuse radiation with a modeled value of diffuse,
#' based on SZA and atmospheric pressure.
#'
#' The upper limit denotes no tracking of CHP-1.
#'
#' Reasons:
#' - Difference of Sun observation angle due to different instruments location.
#' - Cases of instrument windows cleaning
#'
#+ echo=TEST_06, include=T
if (TEST_06) {
    cat(paste("\n6. Rayleigh Limit Diffuse Comparison.\n\n"))
    # criteria
    QS$Rayleigh_upper_lim <- 500   # Upper departure diffuse limit
    QS$Rayleigh_lower_lim <-  -3   # Lower departure diffuse limit
    QS$Rayleigh_dif_glo_r <-   0.8 # Low limit diffuse/global < threshold
    QS$Rayleigh_glo_min   <-  50   # Low limit minimum global
    # model
    Rayleigh_diff <- function(SZA, Pressure) {
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
    DATA[, RaylDIFF  := Rayleigh_diff(SZA = SZA, Pressure = pressure) ]

    DATA[, QCF_BTH_06_1 := NA]
    DATA[, QCF_BTH_06_2 := NA]

    ## . . Both ----------------------------------------------------------------
    DATA[DIFF_strict - RaylDIFF > QS$Rayleigh_upper_lim,
         QCF_BTH_06_1 := "Rayleigh diffuse limit (18)" ]
    DATA[DIFF_strict - RaylDIFF < QS$Rayleigh_lower_lim,
         QCF_BTH_06_2 := "Rayleigh diffuse limit (18)" ]

}

#+ echo=F, include=T, results="asis"
if (TEST_06) {

    cat(pander(table(DATA$QCF_BTH_06_1, exclude = TRUE)))
    cat("\n\n")
    cat(pander(table(DATA$QCF_BTH_06_2, exclude = TRUE)))
    cat("\n\n")

    hist( DATA[, DIFF_strict - RaylDIFF ], breaks = 100 )

    if ( any(!is.na(DATA$QCF_BTH_06_1)) ) {
        hist( DATA[ !is.na(QCF_BTH_06_1), DIFF_strict - RaylDIFF ], breaks = 100)
    }

    if ( any(!is.na(DATA$QCF_BTH_06_2)) ) {
        hist( DATA[ !is.na(QCF_BTH_06_2), DIFF_strict - RaylDIFF ], breaks = 100)
    }

    if (DO_PLOTS) {
        ## plot on upper limit

        tmp <- DATA[ !is.na(QCF_BTH_06_1) ]

        for (ad in sort(unique(c(as.Date(tmp$Date))))) {

            pp   <- DATA[ as.Date(Date) == ad, ]

            layout(matrix(c(1,2), 2, 1, byrow = TRUE))
            par(mar = c(2,4,2,1))

            ylim <- range(pp$DIFF_strict, pp$RaylDIFF, na.rm = T)
            plot( pp$Date, pp$DIFF_strict, "l",
                  ylim = ylim, col = "cyan", ylab = "Diffuse", xlab = "")
            lines(pp$Date, pp$RaylDIFF, col = "magenta" )
            lines(pp$Date, pp$RaylDIFF + QS$Rayleigh_upper_lim, col = "red" )

            title(paste("6_1", as.Date(ad, origin = "1970-01-01")))

            par(mar = c(2,4,1,1))
            ylim <- range(pp$wattGLB, pp$wattDIR, na.rm = T)
            plot( pp$Date, pp$wattGLB, "l",
                  ylim = ylim, col = "green", ylab = "", xlab = "")
            lines(pp$Date, pp$wattDIR, col = "blue" )

            points(pp[!is.na(QCF_BTH_06_1), Date],
                   pp[!is.na(QCF_BTH_06_1), wattDIR],
                   ylim = ylim, col = "red")
            points(pp[!is.na(QCF_BTH_06_1), Date],
                   pp[!is.na(QCF_BTH_06_1), wattGLB],
                   ylim = ylim, col = "red")
        }

        ## plot on lower limit
        DATA[ !is.na(QCF_BTH_06_2) , .N]
        DATA[ !is.na(QCF_BTH_06_2) &
                  (DIFF_strict / wattGLB < QS$Rayleigh_dif_glo_r) , .N]
        DATA[ !is.na(QCF_BTH_06_2) &
                  (DIFF_strict / wattGLB < QS$Rayleigh_dif_glo_r) &
                  wattGLB > QS$Rayleigh_glo_min , .N]

        tmp <- DATA[!is.na(QCF_BTH_06_2) &
                        (DIFF_strict / wattGLB < QS$Rayleigh_dif_glo_r) &
                        wattGLB > QS$Rayleigh_glo_min ]

        for (ad in sort(unique(c(as.Date(tmp$Date))))) {

            pp   <- DATA[ as.Date(Date) == ad, ]

            layout(matrix(c(1,2), 2, 1, byrow = TRUE))
            par(mar = c(2,4,2,1))

            ylim <- range(pp$DIFF_strict, pp$RaylDIFF, na.rm = T)
            plot( pp$Date, pp$DIFF_strict, "l",
                  ylim = ylim, col = "cyan", ylab = "Diffuse", xlab = "")
            lines(pp$Date, pp$RaylDIFF, col = "magenta" )
            lines(pp$Date, pp$RaylDIFF + QS$Rayleigh_lower_lim, col = "red" )

            title(paste("6_2", as.Date(ad, origin = "1970-01-01")))

            par(mar = c(2,4,1,1))
            ylim <- range(pp$wattGLB, pp$wattDIR, na.rm = T)
            plot( pp$Date, pp$wattGLB, "l",
                  ylim = ylim, col = "green", ylab = "", xlab = "")
            lines(pp$Date, pp$wattDIR, col = "blue" )

            points(pp[!is.na(QCF_BTH_06_2), Date],
                   pp[!is.na(QCF_BTH_06_2), wattDIR],
                   ylim = ylim, col = "red")
            points(pp[!is.na(QCF_BTH_06_2), Date],
                   pp[!is.na(QCF_BTH_06_2), wattGLB],
                   ylim = ylim, col = "red")
        }
    }
}
#' -----------------------------------------------------------------------------




####  7. Test for obstacles  ---------------------------------------------------
#'
#' \newpage
#' ## 7. Test for obstacles
#'
#' This is deactivated
#'
#+ echo=TEST_07, include=T
if (TEST_07) {
    cat(paste("\n7. Obstacles test.\n\n"))

    ## . . Direct ----------------------------------------------------------####

    source("./QCRad_Obstacles_definition_v2.R")

    ## get biology building tag
    # biol     <- biolog_build(DATA$Azimuth, DATA$Elevat )
    # ## apply filter for biology building
    # ## this is not pretty we are using the indexes to mark data
    # ## have to parse all the original data although the filter is applicable
    # ## for a specific range of Azimuth angles
    # building <- which(biol$type == "bellow")
    # existing <- which(is.na(DATA_year$QCF_DIR))
    # exclude  <- building %in% existing
    #
    # DATA_year$QCF_DIR[    building[exclude] ] <- "Biology Building (22)"
    # DATA_year$QCF_DIR_07[ building[exclude] ] <- "Biology Building (22)"
    #
    # ## Pole abstraction is a possibility, should combine with Direct to decide
    # suspects <- DATA_year$Azimuth > Pole_az_lim[1] & DATA_year$Azimuth < Pole_az_lim[2]
    # DATA_year$QCF_DIR[    suspects ]          <- "Possible Direct Obstruction (23)"
    # DATA_year$QCF_DIR_07[ suspects ]          <- "Possible Direct Obstruction (23)"

}

#+ echo=F, include=T
if (TEST_07) {

}
#' -----------------------------------------------------------------------------




####  8. Test for inverted values  ---------------------------------------------
#' \FloatBarrier
#' \newpage
#' ## 8. Test for inverted values
#'
#' Test the ratio of Diffuse / Global radiation.
#' When the Diffuse is too lower than Global, (less than a % limit).
#'
#' This denotes obstacles on the mornings mostly, or very low
#' signals when Sun is near the horizon.
#' Due to the time difference of sun shine, due to geometry, location and
#' obstacles.
#'
#' And possible cases of Instrument windows cleaning shadowing.
#'
#' Probably these value should be removed for CS when occurring on low
#' elevation angles, as the measurements can not be considered to reflect
#' the same condition of Sun visibility.
#'
#' Additional criteria is needed for any data drop.
#'
#+ echo=TEST_08, include=T
if (TEST_08) {
    cat(paste("\n8. Inversion test.\n\n"))

    QS$dir_glo_invert   <- 5  # Diffuse Inversion test: DIRhor - GLBhor > lim[%]
    QS$dir_glo_glo_off  <- 5  # Diffuse Inversion test: apply for GLBhor > offset
    ## TODO
    QS$dir_glo_min_elev <- 5

    DATA[, QCF_BTH_08_1 := NA]
    DATA[, QCF_BTH_08_2 := NA]

    ## . . Both ----------------------------------------------------------------
    DATA[, Relative_diffuse := 100 * (wattHOR - wattGLB) / wattGLB ]
    DATA[ is.infinite(Relative_diffuse), Relative_diffuse := NA]

    DATA[Relative_diffuse > QS$dir_glo_invert  &
                  wattGLB > QS$dir_glo_glo_off ,
         QCF_BTH_08_1 := "Direct > global soft (14)" ]

    DATA[Relative_diffuse > QS$dir_glo_invert ,
         QCF_BTH_08_2 := "Direct > global hard (15)" ]
}

#+ echo=F
if (TEST_08) {

    cat(pander(table(DATA$QCF_BTH_08_1, exclude = TRUE)))
    cat("\n\n")
    cat(pander(table(DATA$QCF_BTH_08_2, exclude = TRUE)))
    cat("\n\n")

    DATA[!is.na(QCF_BTH_08_1), Relative_diffuse]

    if (length(DATA[!is.na(QCF_BTH_08_1), Relative_diffuse]) != 0) {
        hist(DATA[!is.na(QCF_BTH_08_1), Relative_diffuse], breaks = 100)
    }
    if (length(DATA[!is.na(QCF_BTH_08_2), Relative_diffuse]) != 0) {
        hist(DATA[!is.na(QCF_BTH_08_2), Relative_diffuse], breaks = 100)
    }

    hist(DATA[ Relative_diffuse > QS$dir_glo_invert & Elevat  > 3,                  Elevat])
    hist(DATA[ Relative_diffuse > QS$dir_glo_invert & Elevat  > 3,                  wattHOR - wattGLB])
    hist(DATA[ Relative_diffuse > QS$dir_glo_invert & wattGLB > QS$dir_glo_glo_off, Elevat])
    hist(DATA[ Relative_diffuse > QS$dir_glo_invert & wattGLB > QS$dir_glo_glo_off, wattHOR - wattGLB])

    if (DO_PLOTS) {

        ## plot softer limit
        test <- DATA[ !is.na(QCF_BTH_08_1) ]
        xlim <- range( DATA[ Elevat > 0, Azimuth ] )
        for (ad in unique(as.Date(test$Date))) {
            pp   <- DATA[ as.Date(Date) == ad, ]
            ylim <- range(pp$wattGLB, pp$wattHOR, na.rm = T)
            plot( pp$Azimuth, pp$wattHOR, "l",
                  xlim = xlim, ylim = ylim, col = "blue", ylab = "", xlab = "")
            lines(pp$Azimuth, pp$wattGLB, col = "green" )
            title(paste("8_1", as.Date(ad, origin = "1970-01-01")))
            points(pp[!is.na(QCF_BTH_08_1), Azimuth],
                   pp[!is.na(QCF_BTH_08_1), wattHOR],
                   ylim = ylim, col = "red")
            points(pp[!is.na(QCF_BTH_08_1), Azimuth],
                   pp[!is.na(QCF_BTH_08_1), wattGLB],
                   ylim = ylim, col = "magenta")
        }

        ## plot harder limit
        test <- DATA[ !is.na(QCF_BTH_08_2) ]
        xlim <- range( DATA[ Elevat > 0, Azimuth ] )
        for (ad in unique(as.Date(test$Date))) {
            pp   <- DATA[ as.Date(Date) == ad, ]
            ylim <- range(pp$wattGLB, pp$wattHOR, na.rm = T)
            plot( pp$Azimuth, pp$wattHOR, "l",
                  xlim = xlim, ylim = ylim, col = "blue", ylab = "", xlab = "")
            lines(pp$Azimuth, pp$wattGLB, col = "green" )
            title(paste("8_2", as.Date(ad, origin = "1970-01-01")))
            points(pp[!is.na(QCF_BTH_08_2), Azimuth],
                   pp[!is.na(QCF_BTH_08_2), wattHOR],
                   ylim = ylim, col = "red")
            points(pp[!is.na(QCF_BTH_08_2), Azimuth],
                   pp[!is.na(QCF_BTH_08_2), wattGLB],
                   ylim = ylim, col = "magenta")
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
    DATA$Relative_diffuse <- NULL
}
#' -----------------------------------------------------------------------------






####  9. Clearness index test  ---------------------------------------------------
#' \FloatBarrier
#' \newpage
#' ## 9. Clearness index test
#'
#' This filter is mine, and is applied on GHI data.
#'
#' Data near elevation 0 are caused by the cos(SZA) while calculating
#' kt = GLB / (cos(sza) * TSI).
#'
#' For larger elevation angles manual inspection is needed.
#'
#+ echo=TEST_09, include=T
if (TEST_09) {
    cat(paste("\n9. Clearness index (global/TSI) test.\n\n"))

    QS$CL_idx_max      <-  1.13  # Upper Clearness index accepted level
    QS$CL_idx_min      <- -0.001 # Lower Clearness index accepted level
    QS$CL_idx_ele      <-  9     # Apply for elevations above this angle

    DATA[, QCF_GLB_09 := NA]

    ## . . Global --------------------------------------------------------------
    DATA[ClearnessIndex_kt > QS$CL_idx_max & Elevat > QS$CL_idx_ele,
         QCF_GLB_09 := "Clearness index limit max (19)" ]
    DATA[ClearnessIndex_kt < QS$CL_idx_min & Elevat > QS$CL_idx_ele,
         QCF_GLB_09 := "Clearness index limit min (20)" ]
}

#+ echo=F, include=T, results="asis"
if (TEST_09) {

    cat(pander(table(DATA$QCF_GLB_09, exclude = TRUE)))
    cat("\n\n")

    range(DATA[Elevat > QS$CL_idx_ele, ClearnessIndex_kt], na.rm  = TRUE)
    hist( DATA[Elevat > QS$CL_idx_ele, ClearnessIndex_kt], breaks = 100 )

    if (any(!is.na(DATA$QCF_GLB_09))) {
        hist(DATA[!is.na(QCF_GLB_09), wattGLB],           breaks = 100)
        hist(DATA[!is.na(QCF_GLB_09), Elevat ],           breaks = 100)
        hist(DATA[!is.na(QCF_GLB_09), ClearnessIndex_kt], breaks = 100)
    }


    if (DO_PLOTS) {

        tmp <- DATA[ !is.na(QCF_GLB_09) ]

        ## plot offending years
        for (ay in unique(year(tmp$Date))) {
            pp <- DATA[year(Date) == ay]

            ylim = c(-0.5, 2)
            plot(pp$Elevat, pp$ClearnessIndex_kt,
                 main = ay, pch = 19, cex = 0.1,
                 ylim = ylim, xlab = "Elevation", ylab = "Clearness index Kt" )

            abline(v = QS$CL_idx_ele, col = "yellow")

            points(pp[ClearnessIndex_kt > QS$CL_idx_max & Elevat > QS$CL_idx_ele, Elevat],
                   pp[ClearnessIndex_kt > QS$CL_idx_max & Elevat > QS$CL_idx_ele, ClearnessIndex_kt],
                   pch = 19, cex = 0.3, col = "red")
            abline(h = QS$CL_idx_max, col = "magenta", lwd = 0.5)

            points(pp[ClearnessIndex_kt < QS$CL_idx_min & Elevat > QS$CL_idx_ele, Elevat],
                   pp[ClearnessIndex_kt < QS$CL_idx_min & Elevat > QS$CL_idx_ele, ClearnessIndex_kt],
                   pch = 19, cex = 0.3, col = "blue")
            abline(h = QS$CL_idx_min, col = "cyan", lwd = 0.5)
        }

        ## plot offending days
        for (ad in sort(unique(c(as.Date(tmp$Date))))) {
            pp   <- DATA[ as.Date(Date) == ad, ]
            ylim <- range(pp$wattDIR, pp$wattGLB, na.rm = T)
            plot(pp$Date, pp$wattGLB, "l", col = "green",
                 ylim = ylim, xlab = "", ylab = "wattGLB")
            lines(pp$Date, pp$wattDIR, col = "blue")
            title(paste("9_", as.Date(ad, origin = "1970-01-01")))
            ## mark offending data
            points(pp[!is.na(QCF_GLB_09), Date],
                   pp[!is.na(QCF_GLB_09), wattGLB],
                   col = "red", pch = 1)
            ## no applicable to direct!!
            # points(pp[!is.na(QCF_GLB_09), Date],
            #        pp[!is.na(QCF_GLB_09), wattDIR],
            #        col = "red", pch = 1)
        }
    }
}
#' -----------------------------------------------------------------------------





#### ~ ~  Export Data ~ ~ ####
#+ echo=F, include=T, results="asis"
for (YYYY in unique(year(DATA$Date))) {
    write_RDS(object = DATA[ year(Date) == YYYY, ],
              file   = paste0(DATA_BASE,
                              basename(sub("\\.R$","_", Script.Name)), YYYY))
}




#' **END**
#+ include=T, echo=F
# myunlock(lockfile)
tac <- Sys.time()
cat(sprintf("%s %s@%s %s %f mins\n\n",Sys.time(),Sys.info()["login"],Sys.info()["nodename"],Script.Name,difftime(tac,tic,units="mins")))

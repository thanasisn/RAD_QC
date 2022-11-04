# /* Copyright (C) 2022 Athanasios Natsis <natsisthanasis@gmail.com> */
#' ---
#' title:       "QCRad methodology application."
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
#'
#+ echo=F, include=T

####_  Document options _####

#+ echo=F, include=F
knitr::opts_chunk$set(comment    = ""       )
# knitr::opts_chunk$set(dev        = "pdf"   )
knitr::opts_chunk$set(dev        = "png"    )
knitr::opts_chunk$set(out.width  = "100%"   )
knitr::opts_chunk$set(fig.align  = "center" )
knitr::opts_chunk$set(cache      =  TRUE    )
# knitr::opts_chunk$set(fig.pos    = '!h'    )

####_ Notes _####

##
## Run for each year and apply Quality control on radiation data.
## reads:   from QCRad files
## exports: characterized data with QCRad algorithm
##          strict QCRad dat
##          all bad data points
##

#+ include=F, echo=F
####  Set environment  ####
Sys.setenv(TZ = "UTC")
tic <- Sys.time()
Script.Name <- "./QCRad_LongShi_v8_apply_CM21_CHP1.R"
if (!interactive()) {
    pdf(    file = paste0("~/RAD_QC/RUNTIME/", basename(sub("\\.R$",".pdf", Script.Name))))
    sink(   file = paste0("~/RAD_QC/RUNTIME/", basename(sub("\\.R$",".out", Script.Name))), split = TRUE)
    filelock::lock(paste0("~/RAD_QC/RUNTIME/", basename(sub("\\.R$",".loc", Script.Name))), timeout = 0)
}


#+ echo=F, include=T
####  External code  ####
library(scales,     warn.conflicts = F, quietly = T)
library(data.table, warn.conflicts = F, quietly = T)
source("~/CODE/FUNCTIONS/R/trig_deg.R")
source("~/RAD_QC/Functions_write_data.R")



### Variables init ###
DATA_BASE     <- "~/DATA/Broad_Band/QCRad_LongShi/"
IN_PREFIX     <- "LAP_QCRad_LongShi_v8_id_CM21_CHP1_"



####  Load all data  ####
fileslist <- list.files( path    = DATA_BASE,
                         pattern = paste0(IN_PREFIX, ".*.Rds"),
                         full.names = TRUE)
fileslist <- sort(fileslist)
DATA <- data.table()
for (afl in fileslist) {
    tmp  <- readRDS(afl)
    DATA <- rbind(DATA, tmp, fill = TRUE)
    rm(tmp)
}





####  Check Quality factors  ####



keys  <- c("Physical possible limit min (5)", "Physical possible limit max (6)")
#'
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
    cat("\n\n**CHECK OMITED DATA**\n\n")
}



keys  <- c("Second climatological limit (16)")
#'
#' ## 4. Climatological (configurable) Limits
#'
#' Drop all data with flag: `r paste(keys)`.
#'
#+ echo=F, include=T

## find
sel_d <- DATA$QCF_DIR_04.1 %in% keys
sel_g <- DATA$QCF_GLB_04.1 %in% keys
## remove
DATA$wattDIR[sel_d] <- NA
DATA$wattGLB[sel_g] <- NA
## info
cat(c(sum(sel_d, na.rm = T), " Direct Records removed with:", keys), ".\n\n")
cat(c(sum(sel_g, na.rm = T), " Global Records removed with:", keys), ".\n\n")

levels(DATA$QCF_GLB_04.1)
levels(DATA$QCF_GLB_04.2)


levels(DATA$QCF_DIR_04.1)
levels(DATA$QCF_DIR_04.2)



DATA[ !is.na(QCF_DIR_04.1) ]
DATA[ !is.na(QCF_DIR_04.2) ]



wecare <- grep("QCF_DIR_|QCF_GLB_" , names(DATA), value = T )

#
# for (fg in wecare) {
#     cat(paste(fg),"\n")
#     cat(levels(DATA[[fg]]),"\n")
# }
#
#
# # "Physical possible limit min (5)"
# # "Physical possible limit max (6)"
#
#
#
# for (fg in wecare) {
#     if (any(!is.na(DATA[[fg]]))) {
#         try(hist( as.numeric( factor(DATA[[fg]]), main = fg)))
#         try(plot(DATA$Date, factor(DATA[[fg]]), main = fg))
#     }
# }
#
#
#
#
#
# stop()
#
#
#
#
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
#     #### ~ ~ ~ ~  Plot each test action  ~ ~ ~ ~   #############################
#
#     ## get valid data vectors
#     Dgood <- DATA_year$QCF_DIR == "good"
#     Ggood <- DATA_year$QCF_GLB == "good"
#
#     if (all(DO_TEST_01, DO_TEST_02)) {
#         if (any(!is.na(DATA_year$wattDIR))) {
#             ## . . Plot Direct irradiance and tests 1. and 2. --------------####
#             ylim <- range( QS$dir_SWdn_min,
#                            DATA_year$wattDIR,
#                            DATA_year$TSIextEARTH_comb,
#                            Direct_max_extremely_rare,
#                            na.rm = T)
#
#             ####  plot direct by SZA  ####
#             cat("\n\n")
#             plot( DATA_year$SZA[Dgood], DATA_year$wattDIR[Dgood],
#                   cex = .1,
#                   xlim = xlim,  ylim = ylim,
#                   xlab = "SZA", ylab = "Direct Irradiance" )
#             ## 1. Physical possible limit max (6)
#             points(DATA_year$SZA, DATA_year$TSIextEARTH_comb, cex = .2,  col = alpha("red",  0.05))
#             ## 2. Extremely rare limits max (4)
#             points(DATA_year$SZA, Direct_max_extremely_rare,  cex = .2,  col = alpha("blue", 0.05))
#             ## 1. Physical possible limit min (5)
#             abline(h = QS$dir_SWdn_min,                       lwd = 1.5, col = "red")
#             ## 2. Extremely rare limits min (3)
#             abline(h = QS$dir_SWdn_min_ext,                   lwd = 1.5, col = "blue")
#
#             ## plot flagged
#             rare <- which(DATA_year$QCF_DIR %in%
#                               c("Extremely rare limits min (3)", "Extremely rare limits max (4)"))
#             phys <- which(DATA_year$QCF_DIR %in%
#                               c("Physical possible limit min (5)", "Physical possible limit max (6)"))
#
#             points(DATA_year$SZA[rare], DATA_year$wattDIR[rare], cex = .7, col = "cyan")
#             points(DATA_year$SZA[phys], DATA_year$wattDIR[phys], cex = .7, col = "magenta")
#
#             title(main = paste("Direct Beam Physical limits tests 1. and 2.",YY))
#             legend("topright",
#                    legend = c("Global measurements", "Physical limits", "Rare limits", "Rare measurements", "Extreme measurements" ),
#                    col    = c("black",               "red"            , "blue",        "cyan",              "magenta"),
#                    pch = 19, bty = "n", cex = 0.8 )
#
#             ####  plot direct by azimuth  ####
#             cat("\n\n")
#             plot( DATA_year$Azimuth[Dgood], DATA_year$wattDIR[Dgood],
#                   cex = .1,
#                   ylim = ylim,
#                   xlab = "Azimuth", ylab = "Direct Irradiance" )
#             ## 1. Physical possible limit max (6)
#             points(DATA_year$Azimuth, DATA_year$TSIextEARTH_comb,  cex = .1,  col = alpha("red", 0.05))
#             ## 2. Extremely rare limits max (4)
#             points(DATA_year$Azimuth, Direct_max_extremely_rare,   cex = .1,  col = alpha("blue",0.05))
#             ## 1. Physical possible limit min (5)
#             abline(h = QS$dir_SWdn_min,                            lwd = 1.5, col = "red")
#             ## 2. Extremely rare limits min (3)
#             abline(h = QS$dir_SWdn_min_ext,                        lwd = 1.5, col = "blue")
#
#             ## plot flagged
#             rare <- which( DATA_year$QCF_DIR %in%
#                                c("Extremely rare limits min (3)", "Extremely rare limits max (4)"))
#             phys <- which( DATA_year$QCF_DIR %in%
#                                c("Physical possible limit min (5)", "Physical possible limit max (6)"))
#
#             points(DATA_year$Azimuth[rare], DATA_year$wattDIR[rare], cex = .7, col = "cyan")
#             points(DATA_year$Azimuth[phys], DATA_year$wattDIR[phys], cex = .7, col = "magenta")
#
#             title(main = paste("Direct Beam Physical limits tests 1. and 2.", YY))
#             legend("topright",
#                    legend = c("Global measurements", "Physical limits", "Rare limits", "Rare measurements", "Extreme measurements"),
#                    col    = c("black",               "red",             "blue",        "cyan",              "magenta"),
#                    pch = 19, bty = "n", cex = 0.8 )
#
#             ## clean
#             rm(Direct_max_extremely_rare, rare, phys)
#         }
#
#
#         if (any(!is.na(DATA_year$wattGLB))) {
#             ## . . Plot Global irradiance and test 1. and 2. ---------------####
#             ylim <- range(QS$glo_SWdn_min,
#                           DATA_year$wattGLB,
#                           Global_max_physical_limit,
#                           Global_max_extremely_rare,
#                           na.rm = TRUE)
#
#             ####  plot global by SZA  ####
#             cat("\n\n")
#             plot(  DATA_year$SZA[Ggood], DATA_year$wattGLB[Ggood],
#                    cex = .1,
#                    xlim = xlim,  ylim = ylim,
#                    xlab = "SZA", ylab = "Global Irradiance")
#             ## 1. Physical possible limit max (6)
#             points(DATA_year$SZA, Global_max_physical_limit, cex = .1,  col = alpha("red",  0.05))
#             ## 2. Extremely rare limits max (4)
#             points(DATA_year$SZA, Global_max_extremely_rare, cex = .1,  col = alpha("blue", 0.05))
#             ## 1. Physical possible limit min (5)
#             abline(h = QS$glo_SWdn_min,                      lwd = 1.5, col = "red")
#             ## 2. "Extremely rare limits min (3)"
#             abline(h = QS$glo_SWdn_min_ext,                  lwd = 1.5, col = "blue")
#
#             ## plot flagged
#             rare <- which(DATA_year$QCF_GLB %in%
#                               c("Extremely rare limits min (3)", "Extremely rare limits max (4)"))
#             phys <- which(DATA_year$QCF_GLB %in%
#                               c("Physical possible limit min (5)", "Physical possible limit max (6)"))
#
#             points(DATA_year$SZA[rare], DATA_year$wattGLB[rare], cex = .7, col = "cyan")
#             points(DATA_year$SZA[phys], DATA_year$wattGLB[phys], cex = .7, col = "magenta")
#
#             title(main = paste("Global Physical limits tests 1. and 2.",YY))
#             legend("topright",
#                    legend = c("Global measurements", "Physical limits", "Rare limits", "Rare measurements", "Extreme measurements" ),
#                    col    = c("black",               "red"            , "blue",        "cyan",              "magenta"),
#                    pch = 19, bty = "n", cex = 0.8 )
#
#
#             ####  plot global by azimuth  ####
#             cat("\n\n")
#             plot(  DATA_year$Azimuth[Ggood], DATA_year$wattGLB[Ggood],
#                    cex  = .1,
#                    ylim = ylim,
#                    xlab = "Azimuth", ylab = "Global Irradiance" )
#             ## 1. Physical possible limit max (6)
#             points(DATA_year$Azimuth, Global_max_physical_limit, cex = .1,  col = alpha("red", 0.05))
#             ## 2. Extremely rare limits max (4)
#             points(DATA_year$Azimuth, Global_max_extremely_rare, cex = .1,  col = alpha("blue",0.05))
#             ## 1. Physical possible limit min (5)
#             abline(h = QS$glo_SWdn_min,                        lwd = 1.5, col = "red")
#             ## 2. "Extremely rare limits min (3)"
#             abline(h = QS$glo_SWdn_min_ext,                    lwd = 1.5, col = "blue")
#
#             ## plot flagged
#             rare <- which(DATA_year$QCF_GLB %in%
#                               c("Extremely rare limits min (3)",   "Extremely rare limits max (4)"))
#             phys <- which(DATA_year$QCF_GLB %in%
#                               c("Physical possible limit min (5)", "Physical possible limit max (6)"))
#
#             points(DATA_year$Azimuth[rare], DATA_year$wattGLB[rare], cex = .7, col = "cyan"   )
#             points(DATA_year$Azimuth[phys], DATA_year$wattGLB[phys], cex = .7, col = "magenta")
#
#             title(main = paste("Global Physical limits tests 1. and 2.",YY))
#             legend("topright",
#                    legend = c("Global measurements", "Physical limits", "Rare limits", "Rare measurements", "Extreme measurements"),
#                    col    = c("black",               "red"            , "blue",        "cyan",              "magenta"),
#                    pch = 19, bty = "n", cex = 0.8 )
#
#             ## clean
#             rm(Global_max_physical_limit, Global_max_extremely_rare, rare, phys)
#         }
#     } ##END if all(DO_TEST_01, DO_TEST_02)
#
#
#     if (DO_TEST_03 & !all(is.na(DATA_year$DiffuseFraction_Kd))) {
#         ## . . Plot comparison test 3. -------------------------------------####
#
#         ## Direct diffuse fraction problems
#         yrange = range( DATA_year$DiffuseFraction_Kd, na.rm = T )
#         if (yrange[1] < -1) yrange[1] = -1
#         if (yrange[2] >  2) yrange[2] =  2
#         ## the factor is the same for all radiations
#         hard <- which( DATA_year$QCF_DIR %in%   "Diffuse ratio comp max (11)" )
#         soft <- which( DATA_year$QCF_DIR %in% c("Diffuse ratio comp min (12)", "Diffuse ratio comp max (13)"))
#
#         ####  Diffuse Fraction by SZA  ####
#         cat("\n\n")
#         plot( DATA_year$SZA[Ggood | Dgood], DATA_year$DiffuseFraction_Kd[Ggood | Dgood],
#               ylim = yrange,
#               ylab = "Diffuse fraction",
#               cex = .1)
#         ## 3. Diffuse ratio comp max (11)
#         segments( 0, 1.05, 75, 1.05, lwd = 2, col = "red" )
#         segments(75, 1.10, 93, 1.10, lwd = 2, col = "red" )
#         ## 3. Diffuse ratio comp min (12)
#         abline( h = QS$dif_rati_max, lwd = 2, col = "blue")
#         ## 3. Diffuse ratio comp max (13)
#         abline( h = QS$dif_rati_min, lwd = 2, col = "blue")
#
#         ## plot flagged
#         points(DATA_year$SZA[hard], DATA_year$DiffuseFraction_Kd[hard],
#                col = "magenta", cex = 0.5)
#         points(DATA_year$SZA[soft], DATA_year$DiffuseFraction_Kd[soft],
#                col = "cyan",    cex = 0.5)
#
#         title(main = paste("Comparison test 3.", YY))
#         legend("topleft",
#                legend = c("Global measurements", "Max diff proposed", "Our limits", "Rare measurements", "Extreme measurements"),
#                col    = c("black",               "red",               "blue",       "cyan",              "magenta"),
#                pch = 19, bty = "n", cex = 0.8 )
#
#
#         ####  Diffuse fraction by azimuth  ####
#         cat("\n\n")
#         plot( DATA_year$Azimuth[Ggood | Dgood], DATA_year$DiffuseFraction_Kd[Ggood | Dgood],
#               ylim = yrange,
#               ylab = "Diffuse fraction", xlab = "Azimuth",
#               cex = .1)
#
#         ## 3. Diffuse ratio comp max (11)
#         segments(0, 1.05, 360, 1.05, lwd = 2, lty = 2, col = "red")
#         segments(0, 1.10, 360, 1.10, lwd = 2, lty = 2, col = "red")
#         ## 3. Diffuse ratio comp min (12)
#         abline(h = QS$dif_rati_max, lwd = 2, col = "blue")
#         ## 3. Diffuse ratio comp max (13)
#         abline(h = QS$dif_rati_min, lwd = 2, col = "blue")
#
#         ## plot flagged
#         points(DATA_year$Azimuth[hard], DATA_year$DiffuseFraction_Kd[hard],
#                col = "magenta", cex = 0.5)
#         points(DATA_year$Azimuth[soft], DATA_year$DiffuseFraction_Kd[soft],
#                col = "cyan",    cex = 0.5)
#
#         title(main = paste("Comparison test 3.", YY))
#         legend("topright",
#                legend = c("Global measurements", "Max diff proposed", "Our limits", "Rare measurements", "Extreme measurements"),
#                col    = c("black",               "red",               "blue",       "cyan",              "magenta"),
#                pch = 19, bty = "n", cex = 0.8 )
#
#         rm(hard, soft)
#     }##END if DO_TEST_03
#
#
#     if (DO_TEST_04 & !all(is.na(DATA_year$wattDIR))) {
#         ## . . Plot climatological test 4. ---------------------------------####
#         if (any(!is.na(DATA_year$wattDIR))) {
#             ## For Direct
#             ylim <- range(second_level_D,
#                           first_level_D,
#                           DATA_year$wattDIR,
#                           na.rm = T)
#             hard <- which(DATA_year$QCF_DIR %in% "Second climatological limit (16)")
#             soft <- which(DATA_year$QCF_DIR %in% "First climatological limit (17)")
#
#             ####  plot direct by SZA  ####
#             cat("\n\n")
#             plot( DATA_year$SZA[Dgood], DATA_year$wattDIR[Dgood],
#                   cex = .1,
#                   xlim = xlim,  ylim = ylim,
#                   xlab = "SZA", ylab = "Direct Irradiance")
#             ## 4. Second climatological limit (16)
#             points(DATA_year$SZA, second_level_D, cex = .2, col = alpha("red",  0.05))
#             ## 4. First climatological limit (17)
#             points(DATA_year$SZA, first_level_D,  cex = .2, col = alpha("blue", 0.05))
#
#             ## plot flagged
#             points(DATA_year$SZA[soft], DATA_year$wattDIR[soft], cex = .7, col = "cyan")
#             points(DATA_year$SZA[hard], DATA_year$wattDIR[hard], cex = .7, col = "magenta")
#
#             title(main = paste("Direct Beam climatological test 4.", YY))
#             legend("topright",
#                    legend = c("Global measurements", "Second limit", "First limit", "First measurements", "Second measurements" ),
#                    col    = c("black",               "red",          "blue",        "cyan",               "magenta"),
#                    pch = 19, bty = "n", cex = 0.8 )
#
#             ####  plot direct by Azimuth  ####
#             cat("\n\n")
#             plot( DATA_year$Azimuth[Dgood], DATA_year$wattDIR[Dgood],
#                   cex = .1,
#                   ylim = ylim,
#                   xlab = "Azimuth", ylab = "Direct Irradiance" )
#             ## 4. Second climatological limit (16)
#             points(DATA_year$Azimuth, second_level_D, cex = .2,  col = alpha("red",  0.05))
#             ## 4. First climatological limit (17)
#             points(DATA_year$Azimuth, first_level_D,  cex = .2,  col = alpha("blue", 0.05))
#
#             ## plot flagged
#             points(DATA_year$Azimuth[soft], DATA_year$wattDIR[soft], cex = .7, col = "cyan")
#             points(DATA_year$Azimuth[hard], DATA_year$wattDIR[hard], cex = .7, col = "magenta")
#
#             title(main = paste("Direct Beam climatological test 4.", YY))
#             legend("topright",
#                    legend = c("Global measurements", "Second limit", "First limit", "First measurements", "Second measurements" ),
#                    col    = c("black",               "red",          "blue",        "cyan",               "magenta"),
#                    pch = 19, bty = "n", cex = 0.8 )
#         }
#
#
#         if (any(!is.na(DATA_year$wattGLB))) {
#             ## For global
#             ylim <- range(second_level_G,
#                           first_level_G,
#                           DATA_year$wattGLB,
#                           na.rm = TRUE)
#             hard <- which(DATA_year$QCF_GLB %in% "Second climatological limit (16)")
#             soft <- which(DATA_year$QCF_GLB %in% "First climatological limit (17)")
#
#             ####  plot global by SZA  ####
#             cat("\n\n")
#             plot( DATA_year$SZA[Ggood], DATA_year$wattGLB[Ggood],
#                   cex = .1,
#                   xlim = xlim,  ylim = ylim,
#                   xlab = "SZA", ylab = "Global Irradiance" )
#             ## 4. Second climatological limit (16)
#             points(DATA_year$SZA, second_level_G, cex = .2,  col = alpha("red", 0.05))
#             ## 4. First climatological limit (17)
#             points(DATA_year$SZA, first_level_G,  cex = .2,  col = alpha("blue",0.05))
#
#             ## plot flagged
#             points(DATA_year$SZA[soft], DATA_year$wattGLB[soft], cex = .7, col = "cyan")
#             points(DATA_year$SZA[hard], DATA_year$wattGLB[hard], cex = .7, col = "magenta")
#
#             title(main = paste("Global climatological test 4.",YY))
#             legend("topright",
#                    legend = c("Global measurements", "Second limit", "First limit", "First measurements", "Second measurements"),
#                    col    = c("black",               "red",          "blue",        "cyan",               "magenta"),
#                    pch = 19, bty = "n", cex = 0.8 )
#
#             ####  plot global by Azimuth  ####
#             cat("\n\n")
#             plot( DATA_year$Azimuth[Ggood], DATA_year$wattGLB[Ggood],
#                   cex = .1,
#                   ylim = ylim,
#                   xlab = "Azimuth", ylab = "Global Irradiance" )
#             ## 4. Second climatological limit (16)
#             points(DATA_year$Azimuth, second_level_G, cex = .2,  col = alpha("red", 0.05))
#             ## 4. First climatological limit (17)
#             points(DATA_year$Azimuth, first_level_G,  cex = .2,  col = alpha("blue",0.05))
#
#             ## plot flagged
#             points(DATA_year$Azimuth[soft], DATA_year$wattGLB[soft], cex = .7, col = "cyan")
#             points(DATA_year$Azimuth[hard], DATA_year$wattGLB[hard], cex = .7, col = "magenta")
#
#             title(main = paste("Global climatological test 4.",YY))
#             legend("topright",
#                    legend = c("Global measurements", "Second limit", "First limit", "First measurements", "Second measurements"),
#                    col    = c("black",               "red",          "blue",        "cyan",               "magenta"),
#                    pch = 19, bty = "n", cex = 0.8 )
#
#             ## clean
#             rm(second_level_G, first_level_G, second_level_D, first_level_D, hard, soft)
#         }
#     }##END if DO_TEST_04
#
#
#     if (DO_TEST_05 & !all(is.na(DATA_year$wattDIR))) {
#         ## . . Plot Tracker off test 5. ------------------------------------####
#
#         ## plot by SZA
#         cat("\n\n")
#         plot( DATA_year$SZA[Dgood], DATA_year$wattDIR[Dgood],
#               cex = .1,
#               xlim = xlim,
#               xlab = "SZA", ylab = "Direct Irradiance" )
#         title(main = paste("Tracker off test 5.",YY))
#
#         ## plot flagged
#         ss = which(DATA_year$QCF_DIR == "No tracking possible (24)")
#         points( DATA_year$SZA[ss], DATA_year$wattDIF[ss],
#                 cex = .5, col = "cyan" )
#
#         ## plot by Azimuth
#         plot( DATA_year$Azimuth[Dgood], DATA_year$wattDIR[Dgood],
#               cex = .1,
#               xlab = "Azimuth", ylab = "Direct Irradiance" )
#         title(main = paste("Tracker off test 5.",YY))
#         points( DATA_year$Azimuth[ss], DATA_year$wattDIF[ss],
#                 cex = .5, col = "cyan" )
#
#     }
#
#
#     if (DO_TEST_06 & !all(is.na(DATA_year$wattDIF)) ) {
#         ## . . Plot Rayleigh Limit Diffuse test 6. -------------------------####
#
#         ## plot by SZA
#         cat("\n\n")
#         plot( DATA_year$SZA[Dgood | Ggood], DATA_year$wattDIF[Dgood | Ggood],
#               cex = .1,
#               xlim = xlim,
#               xlab = "SZA", ylab = "Diffuse Irradiance" )
#         title(main = paste("Rayleigh Limit Diffuse Comparison test 6.", YY))
#
#         ## plot flagged
#         ss <- which(DATA_year$QCF_DIR == "Rayleigh diffuse limit (18)")
#         points( DATA_year$SZA[ss], DATA_year$wattDIF[ss],
#                 cex = .7, col = "magenta" )
#         legend("topright",
#                legend = c("Diffuse (inferred)", "Rayleigh limit" ),
#                col    = c("black",              "magenta"),
#                pch = 19, bty = "n", cex = 0.8 )
#
#         ## plot by Azimuth
#         cat("\n\n")
#         plot( DATA_year$Azimuth[Dgood | Ggood], DATA_year$wattDIF[Dgood | Ggood],
#               cex = .1,
#               xlab = "Azimuth", ylab = "Diffuse Irradiance" )
#         title(main = paste("Rayleigh Limit Diffuse Comparison test 6.", YY))
#
#         ## plot flagged
#         ss <- which(DATA_year$QCF_DIR == "Rayleigh diffuse limit (18)")
#         points( DATA_year$Azimuth[ss], DATA_year$wattDIF[ss],
#                 cex = .7, col = "magenta" )
#         legend("topright",
#                legend = c("Diffuse (inferred)", "Rayleigh limit" ),
#                col    = c("black",              "magenta"),
#                pch = 19, bty = "n", cex = 0.8 )
#     }##END if DO_TEST_06
#
#
#     if (DO_TEST_07) {
#         ## . . Plot obstacle test 7. ---------------------------------------####
#         if (nrow(DATA_year[ QCF_DIR %in% c("Biology Building (22)", "Possible Direct Obstruction (23)")]) > 0 ) {
#
#             cat("\n\n")
#             plot( DATA_year$Azimuth, DATA_year$Elevat,
#                   cex = .1,
#                   xlab = "Azimuth", ylab = "Elevat" )
#             title(main = paste("Obstacle test 7.", YY))
#
#             ## plot flagged
#             ss = which(DATA_year$QCF_DIR == "Biology Building (22)")
#             points( DATA_year$Azimuth[ss], DATA_year$Elevat[ss],
#                     cex = .1, col = "magenta" )
#
#             ss = which(DATA_year$QCF_DIR == "Possible Direct Obstruction (23)")
#             points( DATA_year$Azimuth[ss], DATA_year$Elevat[ss],
#                     cex = .1, col = "cyan" )
#
#             legend("topright",
#                    legend = c("Direct measurements","Biology Build", "Possible pole obstruction"),
#                    col    = c("black",              "magenta",       "Cyan"      ),
#                    pch = 19, bty = "n", cex = 0.8 )
#
#         }
#     }
#
#
#     if (DO_TEST_08 & !all(is.na(DATA_year$wattDIF))) {
#         ## . . Plot Diffuse inversion test 8. ------------------------------####
#
#         ####  plot direct by SZA  ####
#         cat("\n\n")
#         plot( DATA_year$SZA[Dgood | Ggood], DATA_year$wattDIF[Dgood | Ggood],
#               cex = .1,
#               xlim = xlim,
#               xlab = "SZA", ylab = "Diffuse Irradiance" )
#         title(main = paste("Diffuse inversion test 8.",YY))
#
#         ## plot flagged
#         ss <- which(DATA_year$QCF_DIR == "Direct > global soft (14)")
#         tt <- which(DATA_year$QCF_DIR == "Direct > global hard (15)")
#
#         points( DATA_year$SZA[ss], DATA_year$wattDIF[ss],
#                 cex = .7, col = "magenta" )
#
#         points( DATA_year$SZA[tt], DATA_year$wattDIF[tt],
#                 cex = .7, col = "cyan" )
#
#         legend("topright",
#                legend = c("Diffuse (inferred)", "Inversion hard", "Inversion soft"),
#                col    = c("black",              "magenta",        "cyan"  ),
#                pch = 19, bty = "n", cex = 0.8 )
#
#
#         ####  plot direct by Azimuth  ####
#         cat("\n\n")
#         plot( DATA_year$Azimuth[Dgood | Ggood], DATA_year$wattDIF[Dgood | Ggood],
#               cex = .1,
#               xlab = "Azimuth", ylab = "Diffuse Irradiance")
#         title(main = paste("Diffuse inversion test 8.",YY))
#
#         ## plot flagged
#         ss <- which(DATA_year$QCF_DIR == "Direct > global soft (14)")
#         tt <- which(DATA_year$QCF_DIR == "Direct > global hard (15)")
#
#         points( DATA_year$Azimuth[ss], DATA_year$wattDIF[ss],
#                 cex = .7, col = "magenta" )
#
#         points( DATA_year$Azimuth[tt], DATA_year$wattDIF[tt],
#                 cex = .7, col = "cyan" )
#
#         legend("topright",
#                legend = c("Diffuse (inferred)", "Inversion hard", "Inversion soft" ),
#                col    = c("black",              "magenta",        "cyan"  ),
#                pch = 19, bty = "n", cex = 0.8 )
#     }##END if DO_TEST_08
#
#
#     if (DO_TEST_09 & !all(is.na(DATA_year$Clearness_Kt)) ) {
#         ## . . Clearness index test 9. -------------------------------------####
#         ylim <- range(DATA_year$Clearness_Kt, na.rm = T)
#         if (ylim[1] < -1 ) ylim[1] = -1
#         if (ylim[2] >  3 ) ylim[2] =  3
#
#         dddd <- DATA_year$QCF_GLB %in%
#                     c("Clearness index limit max (19)", "Clearness index limit min (20)")
#
#         ## by SZA
#         cat("\n\n")
#         plot(DATA_year$SZA[!dddd], DATA_year$Clearness_Kt[!dddd],
#              cex = .1,
#              ylim = ylim, xlim = xlim,
#              xlab = "SZA", ylab = "Clearness Index (Global)" )
#
#         ppmax <- DATA_year$QCF_GLB == "Clearness index limit max (19)"
#         ppmin <- DATA_year$QCF_GLB == "Clearness index limit min (20)"
#
#         points( DATA_year$SZA[ppmax], DATA_year$Clearness_Kt[ppmax],
#                 cex = .7, col = "cyan" )
#
#         points( DATA_year$SZA[ppmin], DATA_year$Clearness_Kt[ppmin],
#                 cex = .7, col = "magenta")
#
#         legend("topleft",
#                legend = c("Clearness index", "Extreme clearness index", "Too low clearness index"),
#                col    = c("black",           "cyan",                    "magenta"                ),
#                pch = 19, bty = "n", cex = 0.8 )
#         title(main = paste("Clearness index test 9.", YY))
#
#         ## by Azimuth
#         cat("\n\n")
#         plot(DATA_year$Azimuth[!dddd], DATA_year$Clearness_Kt[!dddd],
#              cex = .1,
#              ylim = ylim,
#              xlab = "Azimuth", ylab = "Clearness Index (Global)" )
#
#         ppmax <- DATA_year$QCF_GLB == "Clearness index limit max (19)"
#         ppmin <- DATA_year$QCF_GLB == "Clearness index limit min (20)"
#
#         points( DATA_year$Azimuth[ppmax], DATA_year$Clearness_Kt[ppmax],
#                 cex = .7, col = "cyan")
#
#         points( DATA_year$Azimuth[ppmin], DATA_year$Clearness_Kt[ppmin],
#                 cex = .7, col = "magenta")
#
#         legend("topleft",
#                legend = c("Clearness index", "Extreme clearness index", "Too low clearness index"),
#                col    = c("black",           "cyan",                    "magenta"                ),
#                pch = 19, bty = "n", cex = 0.8 )
#         title(main = paste("Clearness index test 9.", YY))
#     }##END if DO_TEST_09
#
#
#
#
#     # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
#     ####    Plot problematic data    ##########################################
#     # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
#
#
#     ## . . Plot all problems on Direct ------------------------------------####
#
#     ## by SZA
#     if (!all(is.na(DATA_year$wattDIR))) {
#         cat("\n\n")
#         plot( DATA_year$SZA, DATA_year$wattDIR,
#               cex = .1,
#               xlab = "SZA", ylab = "Direct Irradiance" )
#
#         ## plot flagged
#         prob <- !(DATA_year$QCF_DIR %in% c("good", "Diffuse ratio comp min (12)"))
#         points( DATA_year$SZA[prob], DATA_year$wattDIR[prob],
#                 cex = 0.7,
#                 col = palete_rand[ DATA_year$QCF_DIR[prob] ])
#
#         ## annotations
#         cnames = unique(DATA_year$QCF_DIR[prob])
#         if ( length(cnames) > 0 ) {
#             legend("topright",
#                    title  = "Suspicious measurements",
#                    legend = cnames,
#                    col    = palete_rand[cnames],
#                    pch = 19, bty = "n", cex = 0.7 ) }
#         title(paste("All suspects on Direct (excl. Diffuse ratio comp min (12)) for", YY))
#     }
#
#
#
#     ## by Azimuth
#     if (!all(is.na(DATA_year$wattDIR))) {
#         cat("\n\n")
#         plot( DATA_year$Azimuth, DATA_year$wattDIR,
#               cex = .1,
#               xlab = "Azimuth", ylab = "Direct Irradiance" )
#
#         ## plot flagged
#         prob <- !(DATA_year$QCF_DIR %in% c("good", "Diffuse ratio comp min (12)"))
#         points( DATA_year$Azimuth[prob], DATA_year$wattDIR[prob],
#                 cex = 0.7,
#                 col = palete_rand[ DATA_year$QCF_DIR[prob] ])
#
#         ## annotations
#         cnames = unique(DATA_year$QCF_DIR[prob])
#         if (length(cnames) > 0) {
#             legend("topleft",
#                    title  = "Suspicious measurements",
#                    legend = cnames,
#                    col    = palete_rand[cnames],
#                    pch = 19, bty = "n", cex = 0.7 ) }
#         title(paste("All suspects on Direct (excl. Diffuse ratio comp min (12)) for", YY))
#     }
#
#
#     ## . . Plot all problems on Global -------------------------------------####
#
#     ## by SZA
#     cat("\n\n")
#     plot( DATA_year$SZA, DATA_year$wattGLB,
#           cex = .1,
#           xlab = "SZA", ylab = "Global Irradiance" )
#
#     ## plot flagged
#     prob <- !(DATA_year$QCF_GLB %in% c("good", "Diffuse ratio comp min (12)"))
#     points( DATA_year$SZA[prob], DATA_year$wattGLB[prob],
#             cex = 0.7,
#             col = palete_rand[ DATA_year$QCF_GLB[prob] ])
#
#     ## annotations
#     cnames <- unique(DATA_year$QCF_GLB[prob])
#     if (length(cnames) > 0) {
#         legend("topright",
#                title = "Suspicious measurements",
#                legend = cnames,
#                col = palete_rand[cnames],
#                pch = 19, bty = "n", cex = 0.7 ) }
#     title(paste("All suspects on Global (excl. Diffuse ratio comp min (12)) for",YY))
#
#     ## by Azimuth
#     cat("\n\n")
#     plot( DATA_year$Azimuth, DATA_year$wattGLB,
#           cex = .1,
#           xlab = "Azimuth", ylab = "Global Irradiance" )
#
#     ## plot flagged
#     prob <- !(DATA_year$QCF_GLB %in% c("good", "Diffuse ratio comp min (12)"))
#     points( DATA_year$Azimuth[prob], DATA_year$wattGLB[prob],
#             cex = 0.7,
#             col = palete_rand[ DATA_year$QCF_GLB[prob] ])
#
#     ## annotations
#     cnames <- unique(DATA_year$QCF_GLB[prob])
#     if (length(cnames) > 0) {
#         legend("topleft",
#                title  = "Suspicious measurements",
#                legend = cnames,
#                col    = palete_rand[cnames],
#                pch = 19, bty = "n", cex = 0.7 ) }
#     title(paste("All suspects on Direct (excl. Diffuse ratio comp min (12)) for", YY))
#
#
#
#     ## . . Plot all problems on Diffuse ------------------------------------####
#     if (!all(is.na(DATA_year$wattDIF))) {
#         ## by SZA
#         cat("\n\n")
#         plot( DATA_year$SZA, DATA_year$wattDIF,
#               cex = .1,
#               xlab = "SZA", ylab = "Diffuse Irradiance" )
#
#         ## plot flagged
#         prob1 <- !(DATA_year$QCF_DIR %in% c("good"))
#         prob2 <- !(DATA_year$QCF_GLB %in% c("good"))
#
#         points(DATA_year$SZA[prob1], DATA_year$wattDIF[prob1],
#                cex = 0.7,
#                col = palete_rand[ DATA_year$QCF_DIR[prob1] ])
#         points(DATA_year$SZA[prob2], DATA_year$wattDIF[prob2],
#                cex = 0.7,
#                col = palete_rand[ DATA_year$QCF_GLB[prob2] ])
#
#
#         ## annotations
#         cnames1 <- unique(DATA_year$QCF_DIR[prob1])
#         cnames2 <- unique(DATA_year$QCF_GLB[prob2])
#         cnames  <- unique(cnames1, cnames2)
#         if (length(cnames) > 0) {
#             legend("topright",
#                    title  = "Suspicious measurements",
#                    legend = cnames,
#                    col    = palete_rand[cnames],
#                    pch = 19, bty = "n", cex = 0.7 ) }
#         title(paste("Suspects on Diffuse for",YY))
#
#     }
#
#
#     ## . . Plot all problems on Diffuse fraction ---------------------------####
#     if (!all(is.na(DATA_year$DiffuseFraction_Kd))) {
#         ## by SZA
#         cat("\n\n")
#         plot( DATA_year$SZA, DATA_year$DiffuseFraction_Kd,
#               cex = .1,
#               xlab = "SZA", ylab = "Diffuse fraction" )
#
#         ## plot flagged
#         prob1 <- !(DATA_year$QCF_DIR %in% c("good"))
#         prob2 <- !(DATA_year$QCF_GLB %in% c("good"))
#
#         points( DATA_year$SZA[prob1], DATA_year$DiffuseFraction_Kd[prob1],
#                 cex = 0.7,
#                 col = palete_rand[ DATA_year$QCF_DIR[prob1] ])
#         points( DATA_year$SZA[prob2], DATA_year$DiffuseFraction_Kd[prob2],
#                 cex = 0.7,
#                 col = palete_rand[ DATA_year$QCF_GLB[prob2] ])
#
#         ## annotations
#         cnames1 <- unique(DATA_year$QCF_DIR[prob1])
#         cnames2 <- unique(DATA_year$QCF_GLB[prob2])
#         cnames  <- unique(cnames1, cnames2)
#         if (length(cnames) > 0) {
#             legend("topleft",
#                    title  = "Suspicious measurements",
#                    legend = cnames,
#                    col    = palete_rand[cnames],
#                    pch = 19, bty = "n", cex = 0.7 ) }
#         title(paste("Suspects on Diffuse fraction for",YY))
#
#     }
#
#
#     cat(pander::pander(table(DATA_year$QCF_DIR)))
#     cat("\n\n")
#
#     cat(pander::pander(table(DATA_year$QCF_GLB)))
#     cat("\n\n")
#
#
#     ## . . Plot sun path for direct ----------------------------------------####
#
#     isgood <- DATA_year$QCF_DIR %in% c("good", "Diffuse ratio comp min (12)") &
#               !is.na(DATA_year$wattDIR)
#     if (all(isgood)) {
#         cat("\n\n")
#         plot(DATA_year$Azimuth[isgood], DATA_year$Elevat[isgood],
#              xlab = "Azimuth", ylab = "Sun Elevation",
#              col = alpha("black", 0.3), pch = 15, cex = 0.5)
#
#         isgood <- !(DATA_year$QCF_DIR %in% c("good", "Diffuse ratio comp min (12)")) &
#                   !is.na(DATA_year$wattDIR)
#         points(DATA_year$Azimuth[isgood], DATA_year$Elevat[isgood],
#                pch = 15, cex = 0.65, col = palete_rand[ DATA_year$QCF_DIR[isgood] ])
#
#         cnames <- unique(DATA_year$QCF_DIR[isgood])
#         if (length(cnames) >0) {
#             legend("topleft",
#                    legend = cnames,
#                    col = palete_rand[cnames],
#                    pch = 19, bty = "n", cex = 0.7)
#             }
#         title(paste("Problems on Direct (excl. Diffuse ratio comp min (12)) for", YY))
#     }
#
#
#     ## . . Plot sun path for global ----------------------------------------####
#
#     isgood <- DATA_year$QCF_GLB %in% c("good", "Diffuse ratio comp min (12)") &
#               !is.na(DATA_year$wattGLB)
#     cat("\n\n")
#     plot(DATA_year$Azimuth[isgood], DATA_year$Elevat[isgood],
#          xlab = "Azimuth", ylab = "Sun Elevation",
#          col = alpha("black", 0.3), pch = 15, cex = 0.5 )
#
#     isgood <- !(DATA_year$QCF_GLB %in% c("good", "Diffuse ratio comp min (12)")) &
#               !is.na(DATA_year$wattGLB)
#     points(DATA_year$Azimuth[isgood], DATA_year$Elevat[isgood],
#            pch = 15, cex = 0.65, col = palete_rand[ DATA_year$QCF_GLB[isgood] ])
#
#     cnames <- unique(DATA_year$QCF_GLB[isgood])
#     if (length(cnames) > 0 ) {
#         legend("topleft",
#                legend = cnames,
#                col = palete_rand[cnames],
#                pch = 19, bty = "n", cex = 0.7 ) }
#     title(paste("Problems on Global (excl. Diffuse ratio comp min (12)) for", YY))
#
#
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
#
#
#     ## . . Prepare main data for export ------------------------------------####
#
#     ## Drop some columns ##
#     DATA_year <- subset( DATA_year, select = c(-pressure,
#                                                -Times,
#                                                -ClrSW
#     ))
#
#
# #    ## Do some filtering (data drop) ##
#

# #
# #    ## 8. Clearness index test
# #    ## this values are mostly due to too low global values in retention with
# #    ## cos(SZA) and TSI
# #
# #    sel_g <- DATA_year$QCF_GLB %in% c("Clearness index limit max (19)", "Clearness index limit min (20)")
# #    DATA_year$wattGLB[sel_g] <- NA
# #    cat(sprintf( " %6d  %s\n", sum(sel_g, na.rm = T), "Global Records removed due clearness index limits      (19) (20)'"))
# #
# #
# #    ## Drop empty records
# #    empty     <- is.na(DATA_year$wattDIR) & is.na(DATA_year$wattGLB)
# #    DATA_year <- DATA_year[ !empty, ]
# #
# #    ## save data identification
# #    DATA_year <- DATA_year[ DATA_year$Date < LAST_DAY_EXPR , ]
# #    DATA_year <- DATA_year[ DATA_year$Date > PROJECT_START , ]
#
#
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


#' **END**
#+ include=T, echo=F
tac <- Sys.time()
cat(sprintf("%s %s@%s %s %f mins\n\n",Sys.time(),Sys.info()["login"],Sys.info()["nodename"],Script.Name,difftime(tac,tic,units="mins")))

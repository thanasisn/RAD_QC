---
title:       "QCRad methodology apply."
author:      "Natsis Athanasios"
institute:   "AUTH"
affiliation: "Laboratory of Atmospheric Physics"
abstract:    "Data quality for radiation measurements as described by
              CN Long and Y Shi, September 2006, DOE/SC-ARM/TR-074.
              - The QCRad Value Added Product Surface
              Radiation Measurement Quality Control Testing Including
              Climatology_Long2006.pdf"

documentclass: article
classoption:   a4paper,oneside
fontsize:      10pt
geometry:      "left=0.5in,right=0.5in,top=0.5in,bottom=0.5in"

link-citations:  yes
colorlinks:      yes

header-includes:
- \usepackage{caption}
- \usepackage{placeins}
- \captionsetup{font=small}

output:
  bookdown::pdf_document2:
    number_sections:  no
    fig_caption:      no
    keep_tex:         no
    keep_md:          no
    latex_engine:     xelatex
    toc:              yes
    fig_width:        8
    fig_height:       5
  html_document:
    toc: true
    fig_width:  9
    fig_height: 4
  pdf_document:
date: "2023-01-25"
---

**Source code: [github.com/thanasisn/RAD_QC](https://github.com/thanasisn/RAD_QC)**

### Notes ###

Run for each year and apply Quality control on radiation data based on ID.

The chosen levels and filters have to be evaluated with the available data.

reads: QCRad_LongShi_v8_id_*

exports: TODO

TODO:
- plot combination of flag for each point
- plot cumulative graphs like the old
- Plot daily graphs with all available flags



```
## Lock on '/home/athan/RAD_QC/RUNTIME/QCRad_LongShi_v8_apply_CM21_CHP1.loc'
```

```


**USING CACHED DATA!!**
```


### INPUT DATA

**Data range: 1993-04-12 11:05:30 to 2022-11-10 15:14:30**



|                  Filename                  |      File mtime       |
|:------------------------------------------:|:---------------------:|
| LAP_QCRad_LongShi_v8_id_CM21_CHP1_1993.Rds | 2023-01-25 08:34:28.5 |
| LAP_QCRad_LongShi_v8_id_CM21_CHP1_1994.Rds | 2023-01-25 08:34:47.6 |
| LAP_QCRad_LongShi_v8_id_CM21_CHP1_1995.Rds | 2023-01-25 08:35:05.9 |
| LAP_QCRad_LongShi_v8_id_CM21_CHP1_1996.Rds | 2023-01-25 08:35:24.3 |
| LAP_QCRad_LongShi_v8_id_CM21_CHP1_1997.Rds | 2023-01-25 08:35:43.5 |
| LAP_QCRad_LongShi_v8_id_CM21_CHP1_1998.Rds | 2023-01-25 08:36:00.7 |
| LAP_QCRad_LongShi_v8_id_CM21_CHP1_1999.Rds | 2023-01-25 08:36:20.9 |
| LAP_QCRad_LongShi_v8_id_CM21_CHP1_2000.Rds | 2023-01-25 08:36:39.8 |
| LAP_QCRad_LongShi_v8_id_CM21_CHP1_2001.Rds | 2023-01-25 08:36:58.1 |
| LAP_QCRad_LongShi_v8_id_CM21_CHP1_2002.Rds | 2023-01-25 08:37:16.5 |
| LAP_QCRad_LongShi_v8_id_CM21_CHP1_2003.Rds | 2023-01-25 08:37:35.8 |
| LAP_QCRad_LongShi_v8_id_CM21_CHP1_2004.Rds | 2023-01-25 08:37:53.2 |
| LAP_QCRad_LongShi_v8_id_CM21_CHP1_2005.Rds | 2023-01-25 08:38:13.9 |
| LAP_QCRad_LongShi_v8_id_CM21_CHP1_2006.Rds | 2023-01-25 08:38:29.3 |
| LAP_QCRad_LongShi_v8_id_CM21_CHP1_2007.Rds | 2023-01-25 08:38:43.6 |
| LAP_QCRad_LongShi_v8_id_CM21_CHP1_2008.Rds | 2023-01-25 08:38:59.3 |
| LAP_QCRad_LongShi_v8_id_CM21_CHP1_2009.Rds | 2023-01-25 08:39:14.8 |
| LAP_QCRad_LongShi_v8_id_CM21_CHP1_2010.Rds | 2023-01-25 08:39:29.3 |
| LAP_QCRad_LongShi_v8_id_CM21_CHP1_2011.Rds | 2023-01-25 08:39:45.6 |
| LAP_QCRad_LongShi_v8_id_CM21_CHP1_2012.Rds | 2023-01-25 08:40:01.1 |
| LAP_QCRad_LongShi_v8_id_CM21_CHP1_2013.Rds | 2023-01-25 08:40:22.2 |
| LAP_QCRad_LongShi_v8_id_CM21_CHP1_2014.Rds | 2023-01-25 08:40:38.0 |
| LAP_QCRad_LongShi_v8_id_CM21_CHP1_2015.Rds | 2023-01-25 08:40:52.8 |
| LAP_QCRad_LongShi_v8_id_CM21_CHP1_2016.Rds | 2023-01-25 08:41:21.8 |
| LAP_QCRad_LongShi_v8_id_CM21_CHP1_2017.Rds | 2023-01-25 08:41:59.7 |
| LAP_QCRad_LongShi_v8_id_CM21_CHP1_2018.Rds | 2023-01-25 08:42:37.7 |
| LAP_QCRad_LongShi_v8_id_CM21_CHP1_2019.Rds | 2023-01-25 08:43:13.7 |
| LAP_QCRad_LongShi_v8_id_CM21_CHP1_2020.Rds | 2023-01-25 08:43:47.9 |
| LAP_QCRad_LongShi_v8_id_CM21_CHP1_2021.Rds | 2023-01-25 08:44:19.4 |
| LAP_QCRad_LongShi_v8_id_CM21_CHP1_2022.Rds | 2023-01-25 08:44:49.2 |
| LAP_QCRad_LongShi_v8_id_CM21_CHP1_2023.Rds | 2023-01-25 08:44:52.1 |

Table: Input files


### Some filters definitions



```r
QS <- list()
QS$sun_elev_min     <-   -2 * 0.103 # 0. Drop all data when sun is below this point
QS$sun_elev_no_neg  <-    0         # 0. Don't allow negative values below this sun angle







####  1. PHYSICALLY POSSIBLE LIMITS PER BSRN  ##################################
```


\newpage
## 1. PHYSICALLY POSSIBLE LIMITS PER BSRN

Test values are within physical/logical limits.

Direct upper constrain is a closeness to TSI at TOA. Shouldn't be any hits.
or need to remove data.

Global upper constrain is an modeled GHI value.

These limit should not be met, they are defined neat the maximum observed
values of the data set.



```r
if (TEST_01) {
    cat(paste("\n1. Physically Possible Limits.\n\n"))

    QS$dir_SWdn_min <-  -4  # Minimum direct value to consider valid measurement
    QS$dir_SWdn_dif <- 327  # Closeness to to TSI
    QS$glo_SWdn_min <-  -4  # Minimum global value to consider valid measurement
    QS$glo_SWdn_off <- 160  # Global departure offset above the model
    QS$glo_SWdn_amp <- 1.3  # Global departure factor above the model

    ## . . Direct ----------------------------------------------------------####
    DATA[wattDIR < QS$dir_SWdn_min,
         QCF_DIR_01 := "Physical possible limit min (5)"]
    DATA[TSIextEARTH_comb - wattDIR < QS$dir_SWdn_dif,
         QCF_DIR_01 := "Physical possible limit max (6)"]

    ## . . Global ----------------------------------------------------------####
    DATA[wattGLB < QS$glo_SWdn_min,
         QCF_GLB_01 := "Physical possible limit min (5)"]
    DATA[, Glo_max_ref := TSIextEARTH_comb * QS$glo_SWdn_amp * cosde(SZA) ^ 1.2 + QS$glo_SWdn_off]
    DATA[wattGLB > Glo_max_ref,
         QCF_GLB_01 := "Physical possible limit max (6)"]

    cat(pander(table(DATA$QCF_DIR_01, exclude = NULL)))
    cat(pander(table(DATA$QCF_GLB_01, exclude = NULL)))
}
```

```

1. Physically Possible Limits.



|   NA    |
|:-------:|
| 7409002 |



|   NA    |
|:-------:|
| 7409002 |
```

\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-6-1} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-6-2} \end{center}

-----------------------------------------------------------------------------




\newpage
##  2. EXTREMELY RARE LIMITS PER BSRN

These should be a little more restrictive than 1. in order to start
catching erroneous values.

The choose of those settings may be optimized with an iterative process.




```r
if (TEST_02) {
    cat(paste("\n2. Extremely Rare Limits.\n\n"))
    # Upper modeled values
    QS$Dir_SWdn_amp     <-    0.91 # Direct departure factor above the model
    QS$Dir_SWdn_off     <- -140    # Direct departure offset above the model
    QS$Glo_SWdn_amp     <- 1.18    # Global departure factor above the model
    QS$Glo_SWdn_off     <- 40      # Global departure offset above the model
    # Minimum accepted values
    QS$dir_SWdn_min_ext <-   -2    # Extremely Rare Minimum Limits
    QS$glo_SWdn_min_ext <-   -2    # Extremely Rare Minimum Limits
    # Compute reference values
    DATA[, Direct_max := TSIextEARTH_comb * QS$Dir_SWdn_amp * cosde(SZA) ^ 0.2 + QS$Dir_SWdn_off]
    DATA[, Global_max := TSIextEARTH_comb * QS$Glo_SWdn_amp * cosde(SZA) ^ 1.2 + QS$Glo_SWdn_off]
    # Ignore too low values near horizon
    DATA[Direct_max < 3, Direct_max := NA]
    DATA[Global_max < 3, Direct_max := NA]

    ## . . Direct ----------------------------------------------------------####
    DATA[wattDIR < QS$dir_SWdn_min_ext, QCF_DIR_02 := "Extremely rare limits min (3)"]
    DATA[wattDIR > Direct_max,          QCF_DIR_02 := "Extremely rare limits max (4)"]

    # ## . . Global ------------------------------------------------------####
    DATA[wattGLB < QS$glo_SWdn_min_ext, QCF_GLB_02 := "Extremely rare limits min (3)"]
    DATA[wattGLB > Global_max,          QCF_GLB_02 := "Extremely rare limits max (4)"]

    pander(table(DATA$QCF_DIR_02, exclude = TRUE))
    pander(table(DATA$QCF_GLB_02, exclude = TRUE))
}
```

```

2. Extremely Rare Limits.
```



| Extremely rare limits max (4) |   NA    |
|:-----------------------------:|:-------:|
|              142              | 7408860 |

\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-1} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-2} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-3} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-4} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-5} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-6} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-7} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-8} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-9} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-10} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-11} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-12} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-13} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-14} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-15} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-16} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-17} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-18} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-19} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-20} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-21} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-22} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-23} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-24} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-25} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-26} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-27} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-28} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-29} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-30} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-31} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-32} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-33} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-34} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-35} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-36} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-37} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-38} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-39} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-40} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-41} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-42} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-43} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-44} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-45} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-46} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-47} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-48} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-49} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-50} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-51} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-52} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-53} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-54} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-55} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-56} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-57} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-58} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-59} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-60} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-61} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-62} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-63} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-64} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-65} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-66} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-67} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-68} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-69} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-70} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-71} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-72} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-73} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-74} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-75} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-76} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-77} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-78} \end{center}

-----------------------------------------------------------------------------




\newpage
## 3. COMPARISON TESTS PER BSRN “non-definitive”





```r
if (TEST_03) {
    cat(paste("\n3. Comparison tests.\n\n"))

    QS$dif_rati_po1  <-  0.03
    QS$dif_rati_po2  <-  0.08
    QS$dif_sza_break <- 75
    QS$dif_rati_pr1  <-  1.03
    QS$dif_rati_pr2  <-  1.06
    QS$dif_watt_lim  <-  10

    ## . . Proposed filter -------------------------------------------------####
    DATA[DiffuseFraction_Kd > QS$dif_rati_pr1 & SZA  <= QS$dif_sza_break & wattGLB > QS$dif_watt_lim,
         QCF_BTH_03_1 := "Diffuse ratio comp max (11)"]
    DATA[DiffuseFraction_Kd > QS$dif_rati_pr2 & SZA   > QS$dif_sza_break & wattGLB > QS$dif_watt_lim,
         QCF_BTH_03_1 := "Diffuse ratio comp max (11)"]

    ## . . Extra filters by me ---------------------------------------------####
    DATA[DiffuseFraction_Kd < QS$dif_rati_po1 & SZA  <= QS$dif_sza_break & wattGLB > QS$dif_watt_lim,
         QCF_BTH_03_2 := "Diffuse ratio comp min (12)"]
    DATA[DiffuseFraction_Kd < QS$dif_rati_po1 & SZA   > QS$dif_sza_break & wattGLB > QS$dif_watt_lim,
         QCF_BTH_03_2 := "Diffuse ratio comp min (12)"]

    pander(table(DATA$QCF_BTH_03_1, exclude = TRUE))
    pander(table(DATA$QCF_BTH_03_2, exclude = TRUE))
}
```

```

3. Comparison tests.
```



| Diffuse ratio comp min (12) |   NA    |
|:---------------------------:|:-------:|
|            1355             | 7407647 |

\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-1} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-2} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-3} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-4} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-5} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-6} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-7} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-8} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-9} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-10} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-11} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-12} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-13} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-14} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-15} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-16} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-17} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-18} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-19} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-20} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-21} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-22} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-23} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-24} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-25} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-26} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-27} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-28} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-29} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-30} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-31} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-32} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-33} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-34} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-35} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-36} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-37} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-38} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-39} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-40} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-41} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-42} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-43} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-44} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-45} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-46} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-47} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-48} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-49} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-50} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-51} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-52} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-53} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-54} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-55} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-56} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-57} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-58} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-59} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-60} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-61} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-62} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-63} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-64} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-65} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-66} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-67} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-68} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-69} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-70} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-71} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-72} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-73} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-74} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-75} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-76} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-77} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-78} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-79} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-80} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-81} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-82} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-83} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-84} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-85} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-86} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-87} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-88} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-89} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-90} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-91} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-92} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-93} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-94} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-95} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-96} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-97} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-98} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-99} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-100} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-101} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-102} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-103} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-104} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-105} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-106} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-107} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-108} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-109} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-110} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-111} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-112} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-113} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-114} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-115} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-116} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-117} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-118} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-119} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-120} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-121} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-122} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-123} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-124} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-125} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-126} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-127} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-128} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-129} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-130} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-131} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-132} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-133} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-134} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-135} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-136} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-137} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-138} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-139} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-140} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-141} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-142} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-143} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-144} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-145} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-146} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-147} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-148} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-149} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-150} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-151} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-152} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-153} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-154} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-155} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-156} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-157} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-158} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-159} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-160} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-161} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-162} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-163} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-164} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-165} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-166} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-167} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-168} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-169} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-170} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-171} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-172} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-173} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-174} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-175} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-176} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-177} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-178} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-179} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-180} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-181} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-182} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-183} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-184} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-185} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-186} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-187} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-188} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-189} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-190} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-191} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-192} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-193} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-194} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-195} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-196} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-197} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-198} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-199} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-200} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-201} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-202} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-203} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-204} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-205} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-206} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-207} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-208} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-209} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-210} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-211} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-212} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-213} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-214} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-215} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-216} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-217} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-218} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-219} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-220} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-221} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-222} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-223} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-224} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-225} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-226} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-227} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-228} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-229} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-230} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-231} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-232} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-233} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-234} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-235} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-236} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-237} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-238} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-239} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-240} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-241} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-242} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-243} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-244} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-245} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-246} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-247} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-248} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-249} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-250} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-251} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-252} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-253} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-254} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-255} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-256} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-257} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-258} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-259} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-260} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-261} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-262} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-263} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-264} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-265} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-266} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-267} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-268} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-269} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-270} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-271} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-272} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-273} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-274} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-275} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-276} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-277} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-278} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-279} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-280} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-281} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-282} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-283} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-284} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-285} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-286} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-287} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-288} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-289} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-290} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-291} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-292} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-293} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-294} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-295} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-296} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-297} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-298} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-299} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-300} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-301} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-302} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-303} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-304} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-305} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-306} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-307} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-308} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-309} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-310} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-311} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-312} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-313} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-314} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-315} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-316} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-317} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-318} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-319} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-320} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-321} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-322} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-323} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-324} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-325} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-326} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-327} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-328} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-329} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-330} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-331} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-332} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-333} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-334} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-335} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-336} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-337} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-338} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-339} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-340} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-341} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-342} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-343} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-344} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-345} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-346} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-347} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-348} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-349} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-350} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-351} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-352} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-353} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-354} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-355} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-356} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-357} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-358} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-359} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-360} \end{center}

-----------------------------------------------------------------------------




\newpage
## 4. Climatological (configurable) Limits

Limits the maximum expected irradiance based on climatological
observations levels and the value of TSI.

Some hits on first limits are expected and need manual evaluation.

Hits on second limit should be problematic data.

For GHI this may limit the radiation enhancement cases.

Exclusions should be done case by case.




```r
if (TEST_04) {
    cat("\n## 4. Climatological (configurable) Limits.\n\n")

    QS$clim_lim_C3 <- 0.77
    QS$clim_lim_D3 <- 0.81
    QS$clim_lim_C1 <- 1.14
    QS$clim_lim_D1 <- 1.32

    ## . . Direct ----------------------------------------------------------####
    DATA[, Dir_First_Clim_lim := TSIextEARTH_comb * QS$clim_lim_C3 * cosde(SZA)^0.2 + 10]
    DATA[wattDIR > Dir_First_Clim_lim,
         QCF_DIR_04_1 := "First climatological limit (17)"]
    DATA[, Dir_Secon_Clim_lim := TSIextEARTH_comb * QS$clim_lim_D3 * cosde(SZA)^0.2 + 15]
    DATA[wattDIR > Dir_Secon_Clim_lim,
         QCF_DIR_04_2 := "Second climatological limit (16)"]

    ## . . Global ----------------------------------------------------------####
    DATA[, Glo_First_Clim_lim := TSIextEARTH_comb * QS$clim_lim_C1 * cosde(SZA)^1.2 + 60]
    DATA[wattGLB > Glo_First_Clim_lim,
         QCF_GLB_04_1 := "First climatological limit (17)"]
    DATA[, Glo_Secon_Clim_lim := TSIextEARTH_comb * QS$clim_lim_D1 * cosde(SZA)^1.2 + 60]
    DATA[wattGLB > Glo_Secon_Clim_lim,
         QCF_GLB_04_2 := "Second climatological limit (16)"]

    cat(pander(table(DATA$QCF_GLB_04_1, exclude = NULL)))
    cat(pander(table(DATA$QCF_GLB_04_2, exclude = NULL)))
    cat(pander(table(DATA$QCF_DIR_04_1, exclude = NULL)))
    cat(pander(table(DATA$QCF_DIR_04_2, exclude = NULL)))
}
```

```

## 4. Climatological (configurable) Limits.



| First climatological limit (17) |   NA    |
|:-------------------------------:|:-------:|
|               128               | 7408874 |



|   NA    |
|:-------:|
| 7409002 |



| First climatological limit (17) |   NA    |
|:-------------------------------:|:-------:|
|              1301               | 7407701 |



|   NA    |
|:-------:|
| 7409002 |
```

\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-1} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-2} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-3} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-4} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-5} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-6} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-7} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-8} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-9} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-10} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-11} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-12} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-13} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-14} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-15} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-16} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-17} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-18} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-19} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-20} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-21} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-22} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-23} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-24} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-25} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-26} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-27} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-28} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-29} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-30} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-31} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-32} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-33} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-34} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-35} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-36} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-37} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-38} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-39} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-40} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-41} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-42} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-43} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-44} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-45} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-46} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-47} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-48} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-49} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-50} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-51} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-52} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-53} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-54} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-55} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-56} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-57} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-58} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-59} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-60} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-61} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-62} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-63} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-64} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-65} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-66} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-67} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-68} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-69} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-70} \end{center}

-----------------------------------------------------------------------------




\newpage
## 5. Tracker is off test




```r
if (TEST_05) {
    cat(paste("\n5. Tracking test.\n\n"))
    ## criteria
    QS$ClrSW_lim  <-    0.85
    QS$glo_min    <-   25
    ## Global Clear SW model
    QS$ClrSW_a    <- 1050.5
    QS$ClrSW_b    <-    1.095
    ## Clear Sky Sort-Wave model
    DATA[, ClrSW_ref2 := ( QS$ClrSW_a / sun_dist ^ 2 ) * cosde(SZA) ^ QS$ClrSW_b ]
    # DATA[, ClrSW_ref1 := TSIextEARTH_comb * cosde(SZA) ^ QS$ClrSW_b ]

    ## . . Direct ----------------------------------------------------------####
    DATA[wattGLB / ClrSW_ref2 > QS$ClrSW_lim & wattDIF / wattGLB > QS$ClrSW_lim & wattGLB > QS$glo_min,
         QCF_DIR_05 := "Possible no tracking (24)"]

    pander(table(DATA$QCF_DIR_05, exclude = T))
}
```

```

5. Tracking test.
```



| Possible no tracking (24) |   NA    |
|:-------------------------:|:-------:|
|           4242            | 7404760 |

\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-1} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-2} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-3} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-4} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-5} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-6} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-7} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-8} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-9} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-10} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-11} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-12} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-13} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-14} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-15} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-16} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-17} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-18} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-19} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-20} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-21} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-22} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-23} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-24} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-25} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-26} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-27} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-28} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-29} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-30} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-31} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-32} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-33} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-34} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-35} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-36} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-37} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-38} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-39} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-40} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-41} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-42} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-43} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-44} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-45} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-46} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-47} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-48} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-49} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-50} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-51} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-52} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-53} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-54} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-55} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-56} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-57} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-58} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-59} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-60} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-61} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-62} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-63} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-64} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-65} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-66} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-67} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-68} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-69} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-70} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-71} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-72} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-73} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-74} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-75} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-76} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-77} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-78} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-79} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-80} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-81} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-82} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-83} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-84} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-85} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-86} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-87} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-88} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-89} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-90} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-91} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-92} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-93} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-94} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-95} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-96} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-97} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-98} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-99} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-100} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-101} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-102} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-103} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-104} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-105} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-106} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-107} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-108} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-109} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-110} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-111} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-112} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-113} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-114} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-115} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-116} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-117} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-118} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-119} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-120} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-121} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-122} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-123} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-124} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-125} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-126} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-127} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-128} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-129} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-130} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-131} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-132} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-133} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-134} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-135} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-136} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-137} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-138} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-139} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-140} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-141} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-142} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-143} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-144} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-145} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-146} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-147} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-148} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-149} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-150} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-151} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-152} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-153} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-154} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-155} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-156} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-157} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-158} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-159} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-160} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-161} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-162} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-163} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-164} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-165} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-166} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-167} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-168} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-169} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-170} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-171} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-172} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-173} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-174} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-175} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-176} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-177} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-178} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-179} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-180} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-181} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-182} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-183} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-184} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-185} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-186} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-187} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-188} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-189} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-190} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-191} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-192} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-193} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-194} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-195} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-196} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-197} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-198} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-199} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-200} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-201} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-202} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-203} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-204} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-205} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-206} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-207} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-208} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-209} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-210} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-211} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-212} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-213} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-214} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-215} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-216} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-217} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-218} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-219} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-220} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-221} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-222} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-223} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-224} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-225} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-226} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-227} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-228} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-229} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-230} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-231} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-232} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-233} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-234} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-235} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-236} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-237} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-238} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-239} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-240} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-241} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-242} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-243} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-244} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-245} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-246} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-247} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-248} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-249} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-250} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-251} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-252} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-253} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-254} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-255} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-256} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-257} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-258} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-259} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-260} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-261} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-262} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-263} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-264} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-265} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-266} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-267} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-268} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-269} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-270} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-271} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-272} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-273} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-274} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-275} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-276} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-277} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-278} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-279} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-280} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-281} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-282} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-283} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-284} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-285} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-286} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-287} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-288} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-289} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-290} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-291} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-292} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-293} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-294} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-295} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-296} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-297} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-298} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-299} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-300} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-301} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-302} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-303} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-304} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-305} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-306} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-307} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-308} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-309} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-310} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-311} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-312} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-313} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-314} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-315} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-316} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-317} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-318} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-319} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-320} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-321} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-322} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-323} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-324} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-325} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-326} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-327} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-328} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-329} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-330} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-331} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-332} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-333} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-334} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-335} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-336} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-337} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-338} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-339} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-340} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-341} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-342} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-343} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-344} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-345} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-346} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-347} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-348} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-349} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-350} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-351} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-352} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-353} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-354} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-355} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-356} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-357} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-358} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-359} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-360} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-361} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-362} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-363} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-364} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-365} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-366} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-367} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-368} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-369} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-370} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-371} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-372} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-373} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-374} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-375} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-376} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-377} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-378} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-379} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-380} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-381} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-382} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-383} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-384} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-385} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-386} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-387} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-388} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-389} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-390} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-391} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-392} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-393} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-394} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-395} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-396} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-397} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-398} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-399} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-400} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-401} \end{center}

-----------------------------------------------------------------------------




\newpage
## 6. Rayleigh Limit Diffuse Comparison

Compare inferred diffuse radiation with a modeled value of diffuse,
based on SZA and atmospheric pressure.

The upper limit denotes no tracking of CHP-1.

Reasons:
- Difference on Sun observation angle due to different instruments location.
- Cases of instrument windows cleaning



```r
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

    ## . . Both ------------------------------------------------------------####
    DATA[wattDIF - RaylDIFF > QS$Rayleigh_upper_lim,
         QCF_BTH_06_1 := "Rayleigh diffuse limit (18)" ]
    DATA[wattDIF - RaylDIFF < QS$Rayleigh_lower_lim,
         QCF_BTH_06_2 := "Rayleigh diffuse limit (18)" ]

    table(DATA$QCF_BTH_06_1, exclude = TRUE)
    table(DATA$QCF_BTH_06_2, exclude = TRUE)
}
```

```

6. Rayleigh Limit Diffuse Comparison.
```

```

Rayleigh diffuse limit (18)                        <NA> 
                      65230                     7343772 
```

\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-1} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-2} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-3} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-4} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-5} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-6} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-7} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-8} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-9} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-10} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-11} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-12} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-13} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-14} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-15} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-16} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-17} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-18} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-19} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-20} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-21} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-22} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-23} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-24} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-25} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-26} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-27} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-28} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-29} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-30} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-31} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-32} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-33} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-34} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-35} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-36} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-37} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-38} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-39} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-40} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-41} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-42} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-43} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-44} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-45} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-46} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-47} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-48} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-49} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-50} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-51} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-52} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-53} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-54} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-55} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-56} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-57} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-58} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-59} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-60} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-61} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-62} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-63} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-64} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-65} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-66} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-67} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-68} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-69} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-70} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-71} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-72} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-73} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-74} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-75} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-76} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-77} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-78} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-79} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-80} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-81} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-82} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-83} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-84} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-85} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-86} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-87} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-88} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-89} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-90} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-91} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-92} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-93} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-94} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-95} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-96} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-97} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-98} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-99} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-100} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-101} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-102} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-103} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-104} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-105} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-106} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-107} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-108} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-109} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-110} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-111} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-112} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-113} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-114} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-115} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-116} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-117} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-118} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-119} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-120} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-121} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-122} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-123} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-124} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-125} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-126} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-127} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-128} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-129} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-130} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-131} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-132} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-133} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-134} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-135} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-136} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-137} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-138} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-139} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-140} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-141} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-142} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-143} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-144} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-145} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-146} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-147} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-148} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-149} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-150} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-151} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-152} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-153} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-154} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-155} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-156} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-157} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-158} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-159} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-160} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-161} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-162} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-163} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-164} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-165} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-166} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-167} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-168} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-169} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-170} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-171} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-172} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-173} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-174} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-175} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-176} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-177} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-178} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-179} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-180} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-181} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-182} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-183} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-184} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-185} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-186} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-187} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-188} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-189} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-190} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-191} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-192} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-193} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-194} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-195} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-196} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-197} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-198} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-199} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-200} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-201} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-202} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-203} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-204} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-205} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-206} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-207} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-208} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-209} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-210} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-211} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-212} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-213} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-214} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-215} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-216} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-217} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-218} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-219} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-220} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-221} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-222} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-223} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-224} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-225} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-226} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-227} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-228} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-229} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-230} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-231} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-232} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-233} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-234} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-235} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-236} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-237} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-238} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-239} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-240} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-241} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-242} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-243} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-244} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-245} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-246} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-247} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-248} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-249} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-250} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-251} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-252} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-253} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-254} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-255} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-256} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-257} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-258} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-259} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-260} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-261} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-262} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-263} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-264} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-265} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-266} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-267} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-268} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-269} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-270} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-271} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-272} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-273} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-274} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-275} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-276} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-277} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-278} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-279} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-280} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-281} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-282} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-283} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-284} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-285} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-286} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-287} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-288} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-289} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-290} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-291} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-292} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-293} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-294} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-295} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-296} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-297} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-298} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-299} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-300} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-301} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-302} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-303} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-304} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-305} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-306} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-307} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-308} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-309} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-310} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-311} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-312} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-313} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-314} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-315} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-316} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-317} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-318} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-319} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-320} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-321} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-322} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-323} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-324} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-325} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-326} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-327} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-328} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-329} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-330} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-331} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-332} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-333} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-334} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-335} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-336} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-337} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-338} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-339} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-340} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-341} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-342} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-343} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-344} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-345} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-346} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-347} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-348} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-349} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-350} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-351} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-352} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-353} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-354} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-355} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-356} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-357} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-358} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-359} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-360} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-361} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-362} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-363} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-364} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-365} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-366} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-367} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-368} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-369} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-370} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-371} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-372} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-373} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-374} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-375} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-376} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-377} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-378} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-379} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-380} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-381} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-382} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-383} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-384} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-385} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-386} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-387} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-388} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-389} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-390} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-391} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-392} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-393} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-394} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-395} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-396} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-397} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-398} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-399} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-400} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-401} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-402} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-403} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-404} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-405} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-406} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-407} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-408} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-409} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-410} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-411} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-412} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-413} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-414} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-415} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-416} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-417} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-418} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-419} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-420} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-421} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-422} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-423} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-424} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-425} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-426} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-427} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-428} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-429} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-430} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-431} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-432} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-433} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-434} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-435} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-436} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-437} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-438} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-439} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-440} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-441} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-442} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-443} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-444} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-445} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-446} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-447} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-448} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-449} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-450} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-451} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-452} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-453} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-454} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-455} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-456} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-457} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-458} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-459} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-460} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-461} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-462} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-463} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-464} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-465} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-466} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-467} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-468} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-469} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-470} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-471} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-472} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-473} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-474} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-475} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-476} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-477} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-478} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-479} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-480} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-481} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-482} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-483} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-484} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-485} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-486} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-487} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-488} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-489} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-490} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-491} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-492} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-493} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-494} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-495} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-496} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-497} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-498} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-499} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-500} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-501} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-502} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-503} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-504} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-505} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-506} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-507} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-508} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-509} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-510} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-511} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-512} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-513} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-514} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-515} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-516} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-517} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-518} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-519} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-520} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-521} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-522} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-523} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-524} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-525} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-526} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-527} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-528} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-529} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-530} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-531} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-532} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-533} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-534} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-535} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-536} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-537} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-538} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-539} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-540} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-541} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-542} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-543} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-544} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-545} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-546} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-547} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-548} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-549} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-550} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-551} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-552} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-553} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-554} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-555} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-556} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-557} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-558} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-559} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-560} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-561} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-562} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-563} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-564} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-565} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-566} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-567} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-568} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-569} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-570} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-571} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-572} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-573} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-574} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-575} \end{center}

-----------------------------------------------------------------------------




\newpage
## 7. Test for obstacles





```
NULL
```

-----------------------------------------------------------------------------




\newpage
## 8. Test for inverted values

Test the ratio of Diffuse / Global radiation.
When the Diffuse is too lower than Global, (less than a % limit).

This denotes obstacles on the mornings mostly, or very low
signals when Sun is near the horizon.
Due to the time difference of sun shine, due to geometry, location and
obstacles.

And possible cases of Instrument windows cleaning shadowing.

Probably these value should be removed for CS when occurring on low
elevation angles, as the measurements can not be considered to reflect
the same condition of Sun visibility.

Additional criteria is needed for any data drop.



```r
if (TEST_08) {
    cat(paste("\n8. Inversion test.\n\n"))

    QS$dir_glo_invert  <- 5  # Diffuse Inversion test: DIRhor - GLBhor > lim[%]
    QS$dir_glo_glo_off <- 5  # Diffuse Inversion test: apply for GLBhor > offset

    ## . . Both ------------------------------------------------------------####
    DATA[, Relative_diffuse := 100 * (wattHOR - wattGLB) / wattGLB ]
    DATA[ is.infinite(Relative_diffuse), Relative_diffuse := NA]

    DATA[Relative_diffuse > QS$dir_glo_invert  &
                  wattGLB > QS$dir_glo_glo_off ,
         QCF_BTH_08_1 := "Direct > global soft (14)" ]

    DATA[Relative_diffuse > QS$dir_glo_invert ,
         QCF_BTH_08_2 := "Direct > global hard (15)" ]

    cat(pander(table(DATA$QCF_BTH_08_1, exclude = TRUE)))
    cat(pander(table(DATA$QCF_BTH_08_2, exclude = TRUE)))
}
```

```

8. Inversion test.



| Direct > global soft (14) |   NA    |
|:-------------------------:|:-------:|
|           1180            | 7407822 |



| Direct > global hard (15) |   NA    |
|:-------------------------:|:-------:|
|           1189            | 7407813 |
```

\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-1} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-2} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-3} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-4} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-5} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-6} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-7} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-8} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-9} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-10} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-11} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-12} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-13} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-14} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-15} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-16} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-17} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-18} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-19} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-20} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-21} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-22} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-23} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-24} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-25} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-26} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-27} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-28} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-29} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-30} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-31} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-32} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-33} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-34} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-35} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-36} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-37} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-38} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-39} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-40} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-41} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-42} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-43} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-44} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-45} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-46} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-47} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-48} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-49} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-50} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-51} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-52} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-53} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-54} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-55} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-56} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-57} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-58} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-59} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-60} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-61} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-62} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-63} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-64} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-65} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-66} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-67} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-68} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-69} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-70} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-71} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-72} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-73} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-74} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-75} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-76} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-77} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-78} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-79} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-80} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-81} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-82} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-83} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-84} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-85} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-86} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-87} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-88} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-89} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-90} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-91} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-92} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-93} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-94} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-95} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-96} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-97} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-98} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-99} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-100} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-101} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-102} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-103} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-104} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-105} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-106} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-107} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-108} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-109} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-110} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-111} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-112} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-113} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-114} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-115} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-116} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-117} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-118} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-119} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-120} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-121} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-122} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-123} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-124} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-125} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-126} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-127} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-128} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-129} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-130} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-131} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-132} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-133} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-134} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-135} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-136} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-137} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-138} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-139} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-140} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-141} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-142} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-143} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-144} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-145} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-146} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-147} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-148} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-149} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-150} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-151} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-152} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-153} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-154} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-155} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-156} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-157} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-158} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-159} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-160} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-161} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-162} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-163} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-164} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-165} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-166} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-167} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-168} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-169} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-170} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-171} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-172} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-173} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-174} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-175} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-176} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-177} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-178} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-179} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-180} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-181} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-182} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-183} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-184} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-185} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-186} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-187} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-188} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-189} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-190} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-191} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-192} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-193} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-194} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-195} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-196} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-197} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-198} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-199} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-200} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-201} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-202} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-203} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-204} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-205} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-206} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-207} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-208} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-209} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-210} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-211} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-212} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-213} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-214} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-215} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-216} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-217} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-218} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-219} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-220} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-221} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-222} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-223} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-224} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-225} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-226} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-227} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-228} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-229} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-230} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-231} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-232} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-233} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-234} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-235} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-236} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-237} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-238} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-239} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-240} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-241} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-242} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-243} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-244} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-245} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-246} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-247} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-248} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-249} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-250} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-251} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-252} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-253} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-254} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-255} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-256} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-257} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-258} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-259} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-260} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-261} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-262} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-263} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-264} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-265} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-266} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-267} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-268} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-269} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-270} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-271} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-272} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-273} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-274} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-275} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-276} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-277} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-278} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-279} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-280} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-281} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-282} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-283} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-284} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-285} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-286} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-287} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-288} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-289} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-290} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-291} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-292} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-293} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-294} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-295} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-296} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-297} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-298} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-299} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-300} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-301} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-302} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-303} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-304} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-305} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-306} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-307} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-308} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-309} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-310} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-311} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-312} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-313} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-314} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-315} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-316} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-317} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-318} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-319} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-320} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-321} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-322} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-323} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-324} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-325} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-326} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-327} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-328} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-329} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-330} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-331} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-332} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-333} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-334} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-335} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-336} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-337} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-338} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-339} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-340} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-341} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-342} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-343} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-344} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-345} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-346} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-347} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-348} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-349} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-350} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-351} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-352} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-353} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-354} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-355} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-356} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-357} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-358} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-359} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-360} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-361} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-362} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-363} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-364} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-365} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-366} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-367} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-368} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-369} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-370} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-371} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-372} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-373} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-374} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-375} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-376} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-377} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-378} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-379} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-380} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-381} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-382} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-383} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-384} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-385} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-386} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-387} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-388} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-389} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-390} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-391} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-392} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-393} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-394} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-395} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-396} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-397} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-398} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-399} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-400} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-401} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-402} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-403} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-404} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-405} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-406} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-407} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-408} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-409} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-410} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-411} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-412} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-413} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-414} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-415} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-416} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-417} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-418} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-419} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-420} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-421} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-422} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-423} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-424} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-425} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-426} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-427} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-428} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-429} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-430} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-431} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-432} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-433} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-434} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-435} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-436} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-437} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-438} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-439} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-440} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-441} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-442} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-443} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-444} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-445} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-446} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-447} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-448} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-449} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-450} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-451} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-452} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-453} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-454} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-455} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-456} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-457} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-458} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-459} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-460} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-461} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-462} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-463} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-464} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-465} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-466} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-467} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-468} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-469} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-470} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-471} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-472} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-473} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-474} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-475} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-476} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-477} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-478} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-479} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-480} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-481} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-482} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-483} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-484} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-485} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-486} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-487} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-488} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-489} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-490} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-491} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-492} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-493} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-494} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-495} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-496} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-497} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-498} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-499} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-500} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-501} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-502} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-503} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-504} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-505} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-506} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-507} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-508} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-509} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-510} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-511} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-512} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-513} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-514} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-515} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-516} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-517} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-518} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-519} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-520} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-521} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-522} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-523} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-524} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-525} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-526} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-527} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-528} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-529} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-530} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-531} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-532} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-533} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-534} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-535} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-536} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-537} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-538} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-539} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-540} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-541} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-542} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-543} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-544} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-545} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-546} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-547} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-548} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-549} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-550} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-551} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-552} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-553} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-554} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-555} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-556} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-557} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-558} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-559} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-560} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-561} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-562} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-563} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-564} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-565} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-566} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-567} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-568} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-569} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-570} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-571} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-572} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-573} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-574} \end{center}

-----------------------------------------------------------------------------




\newpage
## 9. Clearness index test

This filter is mine, and is applied on GHI data.

Data near elevation 0 are caused by the cos(SZA) while calculating
kt = GLB / (cos(sza) * TSI).

For larger elevation angles manual inspection is needed.



```r
if (TEST_09) {
    cat(paste("\n9. Clearness index (global/TSI) test.\n\n"))

    QS$CL_idx_max <-  1.13  # Upper Clearness index accepted level
    QS$CL_idx_min <- -0.001 # Lower Clearness index accepted level
    QS$CL_idx_ele <-  3     # Apply for elevations above this angle

    ## . . Global ----------------------------------------------------------####
    DATA[Clearness_Kt > QS$CL_idx_max & Elevat > QS$CL_idx_ele,
         QCF_GLB_09 := "Clearness index limit max (19)" ]
    DATA[Clearness_Kt < QS$CL_idx_min & Elevat > QS$CL_idx_ele,
         QCF_GLB_09 := "Clearness index limit min (20)" ]

    cat(pander(table(DATA$QCF_GLB_09, exclude = TRUE)))
}
```

```

9. Clearness index (global/TSI) test.



| Clearness index limit max (19) |   NA    |
|:------------------------------:|:-------:|
|               23               | 7408979 |
```

\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-1} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-2} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-3} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-4} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-5} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-6} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-7} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-8} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-9} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-10} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-11} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-12} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-13} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-14} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-15} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-16} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-17} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-18} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-19} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-20} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-21} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-22} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-23} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-24} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-25} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-26} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-27} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-28} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-29} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-30} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-31} \end{center}

-----------------------------------------------------------------------------


Written:  /home/athan/DATA/Broad_Band/QCRad_LongShi/QCRad_LongShi_v8_apply_CM21_CHP1_1993.Rds 

Written:  /home/athan/DATA/Broad_Band/QCRad_LongShi/QCRad_LongShi_v8_apply_CM21_CHP1_1993.inf.md 

Written:  /home/athan/DATA/Broad_Band/QCRad_LongShi/QCRad_LongShi_v8_apply_CM21_CHP1_1994.Rds 

Written:  /home/athan/DATA/Broad_Band/QCRad_LongShi/QCRad_LongShi_v8_apply_CM21_CHP1_1994.inf.md 

Written:  /home/athan/DATA/Broad_Band/QCRad_LongShi/QCRad_LongShi_v8_apply_CM21_CHP1_1995.Rds 

Written:  /home/athan/DATA/Broad_Band/QCRad_LongShi/QCRad_LongShi_v8_apply_CM21_CHP1_1995.inf.md 

Written:  /home/athan/DATA/Broad_Band/QCRad_LongShi/QCRad_LongShi_v8_apply_CM21_CHP1_1996.Rds 

Written:  /home/athan/DATA/Broad_Band/QCRad_LongShi/QCRad_LongShi_v8_apply_CM21_CHP1_1996.inf.md 

Written:  /home/athan/DATA/Broad_Band/QCRad_LongShi/QCRad_LongShi_v8_apply_CM21_CHP1_1997.Rds 

Written:  /home/athan/DATA/Broad_Band/QCRad_LongShi/QCRad_LongShi_v8_apply_CM21_CHP1_1997.inf.md 

Written:  /home/athan/DATA/Broad_Band/QCRad_LongShi/QCRad_LongShi_v8_apply_CM21_CHP1_1998.Rds 

Written:  /home/athan/DATA/Broad_Band/QCRad_LongShi/QCRad_LongShi_v8_apply_CM21_CHP1_1998.inf.md 

Written:  /home/athan/DATA/Broad_Band/QCRad_LongShi/QCRad_LongShi_v8_apply_CM21_CHP1_1999.Rds 

Written:  /home/athan/DATA/Broad_Band/QCRad_LongShi/QCRad_LongShi_v8_apply_CM21_CHP1_1999.inf.md 

Written:  /home/athan/DATA/Broad_Band/QCRad_LongShi/QCRad_LongShi_v8_apply_CM21_CHP1_2000.Rds 

Written:  /home/athan/DATA/Broad_Band/QCRad_LongShi/QCRad_LongShi_v8_apply_CM21_CHP1_2000.inf.md 

Written:  /home/athan/DATA/Broad_Band/QCRad_LongShi/QCRad_LongShi_v8_apply_CM21_CHP1_2001.Rds 

Written:  /home/athan/DATA/Broad_Band/QCRad_LongShi/QCRad_LongShi_v8_apply_CM21_CHP1_2001.inf.md 

Written:  /home/athan/DATA/Broad_Band/QCRad_LongShi/QCRad_LongShi_v8_apply_CM21_CHP1_2002.Rds 

Written:  /home/athan/DATA/Broad_Band/QCRad_LongShi/QCRad_LongShi_v8_apply_CM21_CHP1_2002.inf.md 

Written:  /home/athan/DATA/Broad_Band/QCRad_LongShi/QCRad_LongShi_v8_apply_CM21_CHP1_2003.Rds 

Written:  /home/athan/DATA/Broad_Band/QCRad_LongShi/QCRad_LongShi_v8_apply_CM21_CHP1_2003.inf.md 

Written:  /home/athan/DATA/Broad_Band/QCRad_LongShi/QCRad_LongShi_v8_apply_CM21_CHP1_2004.Rds 

Written:  /home/athan/DATA/Broad_Band/QCRad_LongShi/QCRad_LongShi_v8_apply_CM21_CHP1_2004.inf.md 

Written:  /home/athan/DATA/Broad_Band/QCRad_LongShi/QCRad_LongShi_v8_apply_CM21_CHP1_2005.Rds 

Written:  /home/athan/DATA/Broad_Band/QCRad_LongShi/QCRad_LongShi_v8_apply_CM21_CHP1_2005.inf.md 

Written:  /home/athan/DATA/Broad_Band/QCRad_LongShi/QCRad_LongShi_v8_apply_CM21_CHP1_2006.Rds 

Written:  /home/athan/DATA/Broad_Band/QCRad_LongShi/QCRad_LongShi_v8_apply_CM21_CHP1_2006.inf.md 

Written:  /home/athan/DATA/Broad_Band/QCRad_LongShi/QCRad_LongShi_v8_apply_CM21_CHP1_2007.Rds 

Written:  /home/athan/DATA/Broad_Band/QCRad_LongShi/QCRad_LongShi_v8_apply_CM21_CHP1_2007.inf.md 

Written:  /home/athan/DATA/Broad_Band/QCRad_LongShi/QCRad_LongShi_v8_apply_CM21_CHP1_2008.Rds 

Written:  /home/athan/DATA/Broad_Band/QCRad_LongShi/QCRad_LongShi_v8_apply_CM21_CHP1_2008.inf.md 

Written:  /home/athan/DATA/Broad_Band/QCRad_LongShi/QCRad_LongShi_v8_apply_CM21_CHP1_2009.Rds 

Written:  /home/athan/DATA/Broad_Band/QCRad_LongShi/QCRad_LongShi_v8_apply_CM21_CHP1_2009.inf.md 

Written:  /home/athan/DATA/Broad_Band/QCRad_LongShi/QCRad_LongShi_v8_apply_CM21_CHP1_2010.Rds 

Written:  /home/athan/DATA/Broad_Band/QCRad_LongShi/QCRad_LongShi_v8_apply_CM21_CHP1_2010.inf.md 

Written:  /home/athan/DATA/Broad_Band/QCRad_LongShi/QCRad_LongShi_v8_apply_CM21_CHP1_2011.Rds 

Written:  /home/athan/DATA/Broad_Band/QCRad_LongShi/QCRad_LongShi_v8_apply_CM21_CHP1_2011.inf.md 

Written:  /home/athan/DATA/Broad_Band/QCRad_LongShi/QCRad_LongShi_v8_apply_CM21_CHP1_2012.Rds 

Written:  /home/athan/DATA/Broad_Band/QCRad_LongShi/QCRad_LongShi_v8_apply_CM21_CHP1_2012.inf.md 

Written:  /home/athan/DATA/Broad_Band/QCRad_LongShi/QCRad_LongShi_v8_apply_CM21_CHP1_2013.Rds 

Written:  /home/athan/DATA/Broad_Band/QCRad_LongShi/QCRad_LongShi_v8_apply_CM21_CHP1_2013.inf.md 

Written:  /home/athan/DATA/Broad_Band/QCRad_LongShi/QCRad_LongShi_v8_apply_CM21_CHP1_2014.Rds 

Written:  /home/athan/DATA/Broad_Band/QCRad_LongShi/QCRad_LongShi_v8_apply_CM21_CHP1_2014.inf.md 

Written:  /home/athan/DATA/Broad_Band/QCRad_LongShi/QCRad_LongShi_v8_apply_CM21_CHP1_2015.Rds 

Written:  /home/athan/DATA/Broad_Band/QCRad_LongShi/QCRad_LongShi_v8_apply_CM21_CHP1_2015.inf.md 

Written:  /home/athan/DATA/Broad_Band/QCRad_LongShi/QCRad_LongShi_v8_apply_CM21_CHP1_2016.Rds 

Written:  /home/athan/DATA/Broad_Band/QCRad_LongShi/QCRad_LongShi_v8_apply_CM21_CHP1_2016.inf.md 

Written:  /home/athan/DATA/Broad_Band/QCRad_LongShi/QCRad_LongShi_v8_apply_CM21_CHP1_2017.Rds 

Written:  /home/athan/DATA/Broad_Band/QCRad_LongShi/QCRad_LongShi_v8_apply_CM21_CHP1_2017.inf.md 

Written:  /home/athan/DATA/Broad_Band/QCRad_LongShi/QCRad_LongShi_v8_apply_CM21_CHP1_2018.Rds 

Written:  /home/athan/DATA/Broad_Band/QCRad_LongShi/QCRad_LongShi_v8_apply_CM21_CHP1_2018.inf.md 

Written:  /home/athan/DATA/Broad_Band/QCRad_LongShi/QCRad_LongShi_v8_apply_CM21_CHP1_2019.Rds 

Written:  /home/athan/DATA/Broad_Band/QCRad_LongShi/QCRad_LongShi_v8_apply_CM21_CHP1_2019.inf.md 

Written:  /home/athan/DATA/Broad_Band/QCRad_LongShi/QCRad_LongShi_v8_apply_CM21_CHP1_2020.Rds 

Written:  /home/athan/DATA/Broad_Band/QCRad_LongShi/QCRad_LongShi_v8_apply_CM21_CHP1_2020.inf.md 

Written:  /home/athan/DATA/Broad_Band/QCRad_LongShi/QCRad_LongShi_v8_apply_CM21_CHP1_2021.Rds 

Written:  /home/athan/DATA/Broad_Band/QCRad_LongShi/QCRad_LongShi_v8_apply_CM21_CHP1_2021.inf.md 

Written:  /home/athan/DATA/Broad_Band/QCRad_LongShi/QCRad_LongShi_v8_apply_CM21_CHP1_2022.Rds 

Written:  /home/athan/DATA/Broad_Band/QCRad_LongShi/QCRad_LongShi_v8_apply_CM21_CHP1_2022.inf.md 


**END**


```
2023-01-25 09:09:43.4 athan@tyler ./QCRad_LongShi_v8_apply_CM21_CHP1.R 21.839420 mins
```


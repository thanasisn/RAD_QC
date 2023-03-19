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
date: "2023-03-19"
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

```
Partial data run
```


### INPUT DATA

**Data range: 2022-01-01 05:52:30 to 2023-03-18 16:37:30**



--------------------------------------------------------------------
                  Filename                         File mtime       
-------------------------------------------- -----------------------
 LAP_QCRad_LongShi_v8_id_CM21_CHP1_1993.Rds   2023-03-19 15:51:04.4 

 LAP_QCRad_LongShi_v8_id_CM21_CHP1_1994.Rds   2023-03-19 15:51:46.5 

 LAP_QCRad_LongShi_v8_id_CM21_CHP1_1995.Rds   2023-03-19 15:52:24.8 

 LAP_QCRad_LongShi_v8_id_CM21_CHP1_1996.Rds   2023-03-19 15:53:04.8 

 LAP_QCRad_LongShi_v8_id_CM21_CHP1_1997.Rds   2023-03-19 15:53:45.7 

 LAP_QCRad_LongShi_v8_id_CM21_CHP1_1998.Rds   2023-03-19 15:54:28.5 

 LAP_QCRad_LongShi_v8_id_CM21_CHP1_1999.Rds   2023-03-19 15:55:11.2 

 LAP_QCRad_LongShi_v8_id_CM21_CHP1_2000.Rds   2023-03-19 15:55:56.1 

 LAP_QCRad_LongShi_v8_id_CM21_CHP1_2001.Rds   2023-03-19 15:56:39.8 

 LAP_QCRad_LongShi_v8_id_CM21_CHP1_2002.Rds   2023-03-19 15:57:22.9 

 LAP_QCRad_LongShi_v8_id_CM21_CHP1_2003.Rds   2023-03-19 15:58:08.5 

 LAP_QCRad_LongShi_v8_id_CM21_CHP1_2004.Rds   2023-03-19 15:58:49.4 

 LAP_QCRad_LongShi_v8_id_CM21_CHP1_2005.Rds   2023-03-19 15:59:28.1 

 LAP_QCRad_LongShi_v8_id_CM21_CHP1_2006.Rds   2023-03-19 16:00:15.3 

 LAP_QCRad_LongShi_v8_id_CM21_CHP1_2007.Rds   2023-03-19 16:01:17.8 

 LAP_QCRad_LongShi_v8_id_CM21_CHP1_2008.Rds   2023-03-19 16:02:05.6 

 LAP_QCRad_LongShi_v8_id_CM21_CHP1_2009.Rds   2023-03-19 16:02:59.1 

 LAP_QCRad_LongShi_v8_id_CM21_CHP1_2010.Rds   2023-03-19 16:03:43.7 

 LAP_QCRad_LongShi_v8_id_CM21_CHP1_2011.Rds   2023-03-19 16:04:52.4 

 LAP_QCRad_LongShi_v8_id_CM21_CHP1_2012.Rds   2023-03-19 16:05:50.1 

 LAP_QCRad_LongShi_v8_id_CM21_CHP1_2013.Rds   2023-03-19 16:06:53.7 

 LAP_QCRad_LongShi_v8_id_CM21_CHP1_2014.Rds   2023-03-19 16:07:47.7 

 LAP_QCRad_LongShi_v8_id_CM21_CHP1_2015.Rds   2023-03-19 16:08:31.4 

 LAP_QCRad_LongShi_v8_id_CM21_CHP1_2016.Rds   2023-03-19 16:11:56.6 

 LAP_QCRad_LongShi_v8_id_CM21_CHP1_2017.Rds   2023-03-19 16:16:09.4 

 LAP_QCRad_LongShi_v8_id_CM21_CHP1_2018.Rds   2023-03-19 16:20:02.7 

 LAP_QCRad_LongShi_v8_id_CM21_CHP1_2019.Rds   2023-03-19 16:24:07.5 

 LAP_QCRad_LongShi_v8_id_CM21_CHP1_2020.Rds   2023-03-19 16:28:10.6 

 LAP_QCRad_LongShi_v8_id_CM21_CHP1_2021.Rds   2023-03-19 16:31:25.4 

 LAP_QCRad_LongShi_v8_id_CM21_CHP1_2022.Rds   2023-03-19 16:34:24.1 

 LAP_QCRad_LongShi_v8_id_CM21_CHP1_2023.Rds   2023-03-19 16:34:52.4 
--------------------------------------------------------------------

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


--------
   NA   
--------
 311749 
--------


--------
   NA   
--------
 311749 
--------
```

\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-6-1} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-6-2} \end{center}

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


----------------------------------------
 Extremely rare limits max (4)     NA   
------------------------------- --------
               7                 311742 
----------------------------------------

\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-1} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-2} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-3} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-4} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-5} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-6} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-7} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-8} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-9} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-10} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-11} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-12} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-13} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-14} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-9-15} \end{center}

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


--------------------------------------
 Diffuse ratio comp min (12)     NA   
----------------------------- --------
             208               311541 
--------------------------------------

\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-1} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-2} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-3} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-4} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-5} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-6} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-7} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-8} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-9} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-10} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-11} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-12} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-13} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-14} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-15} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-16} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-17} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-18} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-19} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-20} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-21} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-22} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-23} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-24} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-25} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-26} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-27} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-28} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-29} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-30} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-31} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-32} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-33} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-34} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-35} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-36} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-37} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-38} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-39} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-40} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-41} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-42} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-43} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-44} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-45} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-46} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-47} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-48} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-49} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-50} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-51} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-52} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-53} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-54} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-55} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-56} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-57} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-58} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-59} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-60} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-61} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-62} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-63} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-64} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-65} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-66} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-67} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-68} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-69} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-70} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-71} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-72} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-73} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-12-74} \end{center}

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


-------------------------------------
 First climatological limit     NA   
            (17)                     
---------------------------- --------
             8                311741 
-------------------------------------


--------
   NA   
--------
 311749 
--------


-------------------------------------
 First climatological limit     NA   
            (17)                     
---------------------------- --------
            692               311057 
-------------------------------------


--------
   NA   
--------
 311749 
--------
```

\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-1} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-2} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-3} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-4} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-5} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-6} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-7} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-8} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-9} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-10} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-11} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-12} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-13} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-14} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-15-15} \end{center}

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


----------------------------------------------------------------
 No tracking possible (24)   Possible no tracking (24)     NA   
--------------------------- --------------------------- --------
           2872                         838              308039 
----------------------------------------------------------------

\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-1} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-2} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-3} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-4} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-5} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-6} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-7} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-8} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-9} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-10} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-11} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-12} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-13} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-14} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-15} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-16} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-17} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-18} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-19} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-20} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-21} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-22} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-23} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-24} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-25} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-26} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-27} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-28} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-29} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-30} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-31} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-32} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-33} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-34} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-35} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-36} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-37} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-38} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-39} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-40} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-41} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-42} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-43} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-44} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-45} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-46} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-47} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-48} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-49} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-50} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-51} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-52} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-53} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-54} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-55} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-56} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-57} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-58} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-59} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-60} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-61} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-62} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-63} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-64} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-65} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-66} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-67} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-68} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-69} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-70} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-71} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-72} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-73} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-74} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-75} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-76} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-77} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-78} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-79} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-80} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-81} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-82} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-83} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-84} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-85} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-86} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-87} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-88} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-89} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-90} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-91} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-92} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-93} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-94} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-95} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-96} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-97} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-98} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-99} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-100} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-101} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-102} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-103} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-104} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-105} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-106} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-107} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-108} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-109} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-110} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-111} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-112} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-113} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-114} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-115} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-116} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-117} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-118} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-119} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-120} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-121} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-122} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-123} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-124} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-125} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-126} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-127} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-128} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-129} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-130} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-131} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-132} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-133} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-134} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-135} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-136} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-137} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-138} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-139} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-140} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-141} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-142} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-143} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-144} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-145} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-146} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-147} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-148} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-149} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-150} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-151} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-152} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-153} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-154} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-155} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-156} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-157} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-158} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-159} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-160} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-161} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-162} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-163} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-164} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-165} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-166} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-167} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-168} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-169} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-170} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-171} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-172} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-173} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-174} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-175} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-176} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-177} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-178} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-179} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-180} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-181} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-182} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-183} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-184} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-185} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-186} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-187} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-188} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-189} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-190} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-191} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-192} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-193} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-194} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-195} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-196} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-197} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-198} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-199} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-200} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-201} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-202} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-203} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-204} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-205} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-206} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-207} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-208} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-209} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-210} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-211} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-212} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-213} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-214} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-215} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-216} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-217} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-218} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-219} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-220} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-221} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-222} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-223} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-224} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-225} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-226} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-227} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-228} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-229} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-230} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-231} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-232} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-233} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-234} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-235} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-236} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-237} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-238} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-239} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-240} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-241} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-242} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-243} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-244} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-245} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-246} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-247} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-248} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-249} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-250} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-251} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-252} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-253} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-254} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-255} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-256} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-257} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-258} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-259} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-260} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-261} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-262} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-263} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-264} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-265} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-266} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-267} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-268} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-269} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-270} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-271} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-272} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-273} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-274} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-275} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-276} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-277} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-278} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-279} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-280} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-281} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-282} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-283} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-284} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-285} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-286} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-287} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-288} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-289} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-290} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-291} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-292} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-293} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-294} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-295} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-296} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-297} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-298} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-299} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-300} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-301} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-302} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-303} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-304} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-305} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-306} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-307} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-308} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-309} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-310} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-311} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-312} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-313} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-314} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-315} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-316} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-317} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-318} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-319} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-320} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-321} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-322} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-323} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-324} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-325} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-326} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-327} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-328} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-329} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-330} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-331} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-332} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-333} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-334} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-335} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-336} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-337} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-338} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-339} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-340} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-341} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-342} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-343} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-344} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-345} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-346} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-347} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-348} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-349} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-350} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-351} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-352} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-353} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-354} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-355} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-356} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-357} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-358} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-359} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-360} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-361} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-362} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-363} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-364} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-365} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-366} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-367} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-368} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-369} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-370} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-371} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-372} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-373} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-374} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-375} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-376} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-377} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-378} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-379} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-380} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-381} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-382} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-383} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-384} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-385} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-386} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-387} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-388} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-389} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-390} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-391} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-392} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-393} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-394} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-395} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-396} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-397} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-398} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-399} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-400} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-401} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-402} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-403} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-404} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-405} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-406} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-407} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-408} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-409} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-410} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-411} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-412} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-413} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-414} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-415} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-416} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-417} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-418} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-419} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-420} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-421} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-422} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-423} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-424} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-425} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-426} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-427} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-428} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-429} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-430} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-19-431} \end{center}

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
                      11730                      300019 
```

\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-1} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-2} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-3} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-4} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-5} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-6} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-7} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-8} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-9} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-10} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-11} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-12} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-13} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-14} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-15} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-16} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-17} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-18} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-19} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-20} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-21} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-22} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-23} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-24} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-25} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-26} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-27} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-28} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-29} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-30} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-31} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-32} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-33} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-34} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-35} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-36} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-37} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-38} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-39} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-40} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-41} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-42} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-43} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-44} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-45} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-46} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-47} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-48} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-49} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-50} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-51} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-52} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-53} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-54} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-55} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-56} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-57} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-58} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-59} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-60} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-61} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-62} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-63} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-64} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-65} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-66} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-67} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-68} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-69} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-70} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-71} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-72} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-73} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-74} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-75} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-76} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-77} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-78} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-79} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-80} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-81} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-82} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-83} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-84} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-85} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-86} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-87} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-88} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-89} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-90} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-91} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-92} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-93} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-94} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-95} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-96} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-97} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-98} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-99} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-100} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-101} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-102} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-103} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-104} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-105} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-106} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-107} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-108} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-109} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-110} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-111} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-112} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-113} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-22-114} \end{center}

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


------------------------------------
 Direct > global soft (14)     NA   
--------------------------- --------
            180              311569 
------------------------------------


------------------------------------
 Direct > global hard (15)     NA   
--------------------------- --------
            180              311569 
------------------------------------
```

\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-1} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-2} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-3} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-4} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-5} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-6} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-7} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-8} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-9} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-10} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-11} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-12} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-13} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-14} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-15} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-16} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-17} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-18} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-19} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-20} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-21} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-22} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-23} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-24} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-25} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-26} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-27} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-28} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-29} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-30} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-31} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-32} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-33} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-34} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-35} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-36} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-37} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-38} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-39} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-40} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-41} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-42} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-43} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-44} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-45} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-46} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-47} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-48} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-49} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-50} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-51} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-52} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-53} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-54} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-55} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-56} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-57} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-58} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-59} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-60} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-61} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-62} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-63} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-64} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-65} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-66} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-67} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-68} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-69} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-70} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-71} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-72} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-73} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-74} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-75} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-76} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-77} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-78} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-79} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-80} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-81} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-82} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-83} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-84} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-85} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-86} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-87} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-88} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-89} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-90} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-91} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-92} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-93} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-94} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-95} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-96} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-97} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-98} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-99} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-100} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-101} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-102} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-103} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-104} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-105} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-106} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-107} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-108} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-109} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-110} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-111} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-112} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-113} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-114} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-115} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-116} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-117} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-118} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-119} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-120} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-121} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-122} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-123} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-124} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-125} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-28-126} \end{center}

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


--------------------------------------------------------------------------
 Clearness index limit max (19)   Clearness index limit min (20)     NA   
-------------------------------- -------------------------------- --------
              703                              1076                309970 
--------------------------------------------------------------------------
```

\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-1} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-2} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-3} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-4} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-5} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-6} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-7} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-8} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-9} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-10} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-11} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-12} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-13} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-14} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-15} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-16} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-17} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-18} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-19} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-20} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-21} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-22} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-23} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-24} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-25} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-26} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-27} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-28} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-29} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-30} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-31} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-32} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-33} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-34} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-35} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-36} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-37} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-38} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-39} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-40} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-41} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-42} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-43} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-44} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-45} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-46} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-47} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-48} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-49} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-50} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-51} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-52} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-53} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-54} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-55} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-56} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-57} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-58} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-59} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-60} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-61} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-62} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-63} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-64} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-65} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-66} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-67} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-68} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-69} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-70} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-71} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-72} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-73} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-74} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-75} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-76} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-77} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-78} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-79} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-80} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-81} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-82} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-83} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-84} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-85} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-86} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-87} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-88} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-89} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-90} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-91} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-92} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-93} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-94} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-95} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-96} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-97} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-98} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-99} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-100} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-101} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-102} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-103} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-104} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-105} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-106} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-107} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-108} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-109} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-110} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-111} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-112} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-113} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-114} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-115} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-116} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-117} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-118} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-119} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-120} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-121} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-122} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-123} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-124} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-125} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-126} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-127} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-128} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-129} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-130} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-131} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-132} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-133} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-134} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-135} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-136} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-137} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-138} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-139} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-140} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-141} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-142} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-143} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-144} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-145} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-146} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-147} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-148} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-149} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-150} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-151} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-152} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-153} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-154} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-155} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-156} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-157} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-158} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-159} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-160} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-161} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-162} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-163} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-164} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-165} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-166} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-167} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-168} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-169} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-170} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-171} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-172} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-173} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-174} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-175} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-176} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-177} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-178} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-179} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-180} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-181} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-182} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-183} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-184} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-185} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-186} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-187} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-188} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-189} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-190} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-191} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-192} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-193} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-194} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-195} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-196} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-197} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-198} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-199} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-200} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-201} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-202} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-203} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-204} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-205} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-206} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-207} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-208} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-209} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-210} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-211} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-212} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-213} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-214} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-215} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-216} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-217} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-218} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-219} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-220} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-221} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-222} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-223} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-224} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-225} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-226} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-227} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-228} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-229} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-230} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-231} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-232} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-233} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-234} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-235} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-236} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-237} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-238} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-239} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-240} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-241} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-242} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-243} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-244} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-245} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-246} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-247} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-248} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-249} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-250} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-251} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-252} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-253} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-254} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-255} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-256} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-257} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-258} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-259} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-260} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-261} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-262} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-263} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-264} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-265} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-266} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-267} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-268} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-269} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-270} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-271} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-272} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-273} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-274} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-275} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-276} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-277} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-278} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-279} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-280} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-281} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-282} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-283} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-284} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-285} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-286} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-287} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-288} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-289} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-290} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-291} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-292} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-293} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-294} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-295} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-296} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-297} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-298} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-299} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-300} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-301} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-302} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-303} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-304} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-305} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-306} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-307} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-308} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-309} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-310} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-311} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-312} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-313} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-314} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-315} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-316} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-317} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-318} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-319} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-320} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-321} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-322} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-323} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-324} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-325} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-326} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-327} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-328} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-329} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-330} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-331} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-332} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-333} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-334} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-335} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-336} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-337} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-338} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-339} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-340} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-341} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-342} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-343} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-344} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-345} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-346} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-347} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-348} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-349} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-350} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-351} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-352} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-353} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-354} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-355} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-356} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-357} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-358} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-359} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-360} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-361} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-362} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-363} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-364} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-365} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-366} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-367} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-368} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-369} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-370} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-371} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-372} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-373} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-374} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-375} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-376} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-377} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-378} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-379} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-380} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-381} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-382} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-383} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-384} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-385} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-386} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-387} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-388} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-389} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-390} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-391} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-392} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-393} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-394} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-395} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-396} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-397} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-398} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-399} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-400} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-401} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-402} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-403} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-404} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-405} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-406} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-407} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-408} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-409} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-410} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-411} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-412} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-413} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-414} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-415} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-416} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-417} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-418} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-419} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-420} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-421} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-422} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-423} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-424} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-425} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-426} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-427} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-428} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-429} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-430} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-431} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-432} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-433} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-434} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-435} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-436} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-437} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-438} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-439} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-31-440} \end{center}

-----------------------------------------------------------------------------


Written:  /home/athan/DATA/Broad_Band/QCRad_LongShi/QCRad_LongShi_v8_apply_CM21_CHP1_2022.Rds 

Written:  /home/athan/DATA/Broad_Band/QCRad_LongShi/QCRad_LongShi_v8_apply_CM21_CHP1_2022.inf.md 

Written:  /home/athan/DATA/Broad_Band/QCRad_LongShi/QCRad_LongShi_v8_apply_CM21_CHP1_2023.Rds 

Written:  /home/athan/DATA/Broad_Band/QCRad_LongShi/QCRad_LongShi_v8_apply_CM21_CHP1_2023.inf.md 


**END**


```
2023-03-19 19:56:12.0 athan@tyler ./QCRad_LongShi_v8_apply_CM21_CHP1.R 3.399872 mins
```


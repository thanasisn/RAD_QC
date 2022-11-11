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
    keep_md:          yes
    latex_engine:     xelatex
    toc:              yes
    fig_width:        8
    fig_height:       5
  html_document:
    toc: true
    fig_width:  9
    fig_height: 4
  pdf_document:
date: "2022-11-11"
---

**Source code: [github.com/thanasisn/RAD_QC](https://github.com/thanasisn/RAD_QC)**

### Notes ###

Run for each year and apply Quality control on radiation data based on ID.

The chosen levels and filters have to be evaluated with the available data.

reads: QCRad_LongShi_v8_id_*

exports:



```
## Lock on '/home/athan/RAD_QC/RUNTIME/QCRad_LongShi_v8_apply_CM21_CHP1.loc'
```

```
## Written:  /home/athan/RAD_QC/temp_data.Rds
```


### INPUT DATA

**Data range: 1993-04-12 11:05:30 to 2022-11-09 15:15:30**



|                  Filename                  |      File mtime       |
|:------------------------------------------:|:---------------------:|
| LAP_QCRad_LongShi_v8_id_CM21_CHP1_1993.Rds | 2022-11-11 04:28:21.2 |
| LAP_QCRad_LongShi_v8_id_CM21_CHP1_1994.Rds | 2022-11-11 04:28:37.0 |
| LAP_QCRad_LongShi_v8_id_CM21_CHP1_1995.Rds | 2022-11-11 04:28:51.8 |
| LAP_QCRad_LongShi_v8_id_CM21_CHP1_1996.Rds | 2022-11-11 04:29:07.2 |
| LAP_QCRad_LongShi_v8_id_CM21_CHP1_1997.Rds | 2022-11-11 04:29:23.2 |
| LAP_QCRad_LongShi_v8_id_CM21_CHP1_1998.Rds | 2022-11-11 04:29:38.7 |
| LAP_QCRad_LongShi_v8_id_CM21_CHP1_1999.Rds | 2022-11-11 04:29:54.9 |
| LAP_QCRad_LongShi_v8_id_CM21_CHP1_2000.Rds | 2022-11-11 04:30:11.2 |
| LAP_QCRad_LongShi_v8_id_CM21_CHP1_2001.Rds | 2022-11-11 04:30:26.8 |
| LAP_QCRad_LongShi_v8_id_CM21_CHP1_2002.Rds | 2022-11-11 04:30:44.0 |
| LAP_QCRad_LongShi_v8_id_CM21_CHP1_2003.Rds | 2022-11-11 04:31:01.0 |
| LAP_QCRad_LongShi_v8_id_CM21_CHP1_2004.Rds | 2022-11-11 04:31:16.4 |
| LAP_QCRad_LongShi_v8_id_CM21_CHP1_2005.Rds | 2022-11-11 04:31:31.7 |
| LAP_QCRad_LongShi_v8_id_CM21_CHP1_2006.Rds | 2022-11-11 04:31:46.8 |
| LAP_QCRad_LongShi_v8_id_CM21_CHP1_2007.Rds | 2022-11-11 04:32:01.5 |
| LAP_QCRad_LongShi_v8_id_CM21_CHP1_2008.Rds | 2022-11-11 04:32:17.7 |
| LAP_QCRad_LongShi_v8_id_CM21_CHP1_2009.Rds | 2022-11-11 04:32:33.2 |
| LAP_QCRad_LongShi_v8_id_CM21_CHP1_2010.Rds | 2022-11-11 04:32:47.4 |
| LAP_QCRad_LongShi_v8_id_CM21_CHP1_2011.Rds | 2022-11-11 04:33:03.7 |
| LAP_QCRad_LongShi_v8_id_CM21_CHP1_2012.Rds | 2022-11-11 04:33:21.5 |
| LAP_QCRad_LongShi_v8_id_CM21_CHP1_2013.Rds | 2022-11-11 04:33:38.6 |
| LAP_QCRad_LongShi_v8_id_CM21_CHP1_2014.Rds | 2022-11-11 04:33:55.4 |
| LAP_QCRad_LongShi_v8_id_CM21_CHP1_2015.Rds | 2022-11-11 04:34:11.1 |
| LAP_QCRad_LongShi_v8_id_CM21_CHP1_2016.Rds | 2022-11-11 04:34:43.0 |
| LAP_QCRad_LongShi_v8_id_CM21_CHP1_2017.Rds | 2022-11-11 04:35:22.6 |
| LAP_QCRad_LongShi_v8_id_CM21_CHP1_2018.Rds | 2022-11-11 04:36:01.9 |
| LAP_QCRad_LongShi_v8_id_CM21_CHP1_2019.Rds | 2022-11-11 04:36:40.3 |
| LAP_QCRad_LongShi_v8_id_CM21_CHP1_2020.Rds | 2022-11-11 04:37:17.7 |
| LAP_QCRad_LongShi_v8_id_CM21_CHP1_2021.Rds | 2022-11-11 04:37:52.2 |
| LAP_QCRad_LongShi_v8_id_CM21_CHP1_2022.Rds | 2022-11-11 04:38:19.9 |

Table: Input files


### Some filters definitions



```r
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



####  1. PHYSICALLY POSSIBLE LIMITS PER BSRN  ####
keys  <- c("Physical possible limit min (5)", "Physical possible limit max (6)")
```


\newpage
## 1. PHYSICALLY POSSIBLE LIMITS PER BSRN

Drop all data with flag: Physical possible limit min (5), Physical possible limit max (6).



```
0  Direct Records removed with: Physical possible limit min (5) Physical possible limit max (6) .
```

```
0  Global Records removed with: Physical possible limit min (5) Physical possible limit max (6) .
```

-----------------------------------------------------------------------------




\newpage
## 4. Climatological (configurable) Limits



```

## 4. Climatological (configurable) Limits.
```


Limits the maximum expected irradiance based on climatological
observations levels and the value of TSI.

Some hits on first limits are expected and need manual evaluation.

Hits on second limit should be problematic data.

For GHI this may limit the radiation enhancement cases.

Exclusions should be done case by case.



```r
if (TEST_04) {
    QS$clim_lim_C3 <- 0.77
    QS$clim_lim_D3 <- 0.81
    QS$clim_lim_C1 <- 1.14
    QS$clim_lim_D1 <- 1.32

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

    pander(table(DATA$QCF_GLB_04.1, exclude = NULL))
    pander(table(DATA$QCF_GLB_04.2, exclude = NULL))
    pander(table(DATA$QCF_DIR_04.1, exclude = NULL))
    pander(table(DATA$QCF_DIR_04.2, exclude = NULL))
}
```



|   NA    |
|:-------:|
| 7410000 |

\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-8-1} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-8-2} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-8-3} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-8-4} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-8-5} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-8-6} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-8-7} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-8-8} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-8-9} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-8-10} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-8-11} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-8-12} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-8-13} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-8-14} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-8-15} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-8-16} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-8-17} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-8-18} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-8-19} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-8-20} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-8-21} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-8-22} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-8-23} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-8-24} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-8-25} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-8-26} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-8-27} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-8-28} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-8-29} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-8-30} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-8-31} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-8-32} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-8-33} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-8-34} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-8-35} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-8-36} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-8-37} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-8-38} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-8-39} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-8-40} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-8-41} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-8-42} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-8-43} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-8-44} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-8-45} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-8-46} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-8-47} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-8-48} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-8-49} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-8-50} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-8-51} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-8-52} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-8-53} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-8-54} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-8-55} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-8-56} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-8-57} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-8-58} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-8-59} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-8-60} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-8-61} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-8-62} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-8-63} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-8-64} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-8-65} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-8-66} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-8-67} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-8-68} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-8-69} \end{center}



\begin{center}\includegraphics[height=0.3\textheight]{/home/athan/RAD_QC/REPORTS/QCRad_LongShi_v8_apply_CM21_CHP1_files/figure-latex/unnamed-chunk-8-70} \end{center}

-----------------------------------------------------------------------------




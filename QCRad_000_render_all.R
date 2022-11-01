#!/usr/bin/env Rscript
# /* Copyright (C) 2019 Athanasios Natsis <natsisthanasis@gmail.com> */

rm(list = (ls()[ls() != ""]))
Sys.setenv(TZ = "UTC")
tic <- Sys.time()
Script.Name <- tryCatch({ funr::sys.script() },
                        error = function(e) { cat(paste("\nUnresolved script name: ", e),"\n")
                            return("RAD_QC_") })

library(rmarkdown)
library(knitr)


setwd("~/RAD_QC/")


## environmental variables are killed by rm(ls) inside each script

OUTPUT_FORMAT = NULL


####  update raw data  ####
# system("./get_data_from_sirena.sh")


# render("./CHP1_R10_Read_raw_LAP.R",
#        params = list( ALL_YEARS = TRUE ),
#        clean                = T  ,
#        output_dir           = "./REPORTS/")
#
#
# render("./CHP1_R11_Read_raw_SNC.R",
#        params = list( ALL_YEARS = TRUE ),
#        clean                = T  ,
#        output_dir           = "./REPORTS/")
#
#
# render("./CHP1_R12_Read_raw_TMP.R",
#        params = list( ALL_YEARS = TRUE ),
#        clean                = T  ,
#        output_dir           = "./REPORTS/")
#






## some more nice plots

# source("./CM21_P98_Plot_all_years_LAP.R")

# source("./CM21_P99_Plot_all_daily_LAP.R")



cat(paste("\n\n IS YOU SEE THIS: \n", Script.Name," GOT TO THE END!! \n"))
cat(paste("\n EVERYTHING SHOULD BE FINE \n"))

## END ##
tac <- Sys.time()
cat(sprintf("%s %s@%s %s %f mins\n\n",Sys.time(),Sys.info()["login"],Sys.info()["nodename"],Script.Name,difftime(tac,tic,units="mins")))

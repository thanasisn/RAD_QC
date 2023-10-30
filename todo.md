
# RAD_QC


Check all filters based on wattDIF!!!!!!!!

## Improve QCrad flagging

- finish the new version [ ]
- hunt for bad data [ ]


## Replace variables

### Implemented in v9
Clearness_Kt is created here but 
ClearnessIndex_kt is already available from BB


DiffuseFraction_Kd is created here but
DiffuseFraction_kd is already available from BB



## tag selection is not consistent have to check!!!
    DATA[QCF_DIR_05 == "Possible no tracking (24)"  ]
    DATA[ !is.na(QCF_DIR_05) ]

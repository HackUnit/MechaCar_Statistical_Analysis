library(dplyr)
MechaCar_mpg_df <- read.csv(file='Resources/MechaCar_mpg.csv',check.names=FALSE,stringsAsFactors = FALSE)


lm(mpg ~ vehicle_length + 
     vehicle_weight + 
     spoiler_angle + 
     ground_clearance + 
     AWD,data=MechaCar_mpg_df)

summary(lm(mpg ~ vehicle_length + 
             vehicle_weight + 
             spoiler_angle + 
             ground_clearance + 
             AWD,data=MechaCar_mpg_df))
library(dplyr)
library(tidyverse)

# Deliverable 1

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


# Deliverable 2

Suspension_Coil_df <- read.csv(file='Resources/Suspension_Coil.csv',check.names = FALSE,stringsAsFactors = FALSE)

# Summary DataFrame
total_summary <- Suspension_Coil_df %>% summarize(Mean=mean(PSI),
                                                  Median=median(PSI),
                                                  Variance=var(PSI),
                                                  SD=sd(PSI))

# Lot Summary DataFrame
lot_summary <- Suspension_Coil_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),
                                                                                Median=median(PSI),
                                                                                Variance=var(PSI),
                                                                                SD=sd(PSI))
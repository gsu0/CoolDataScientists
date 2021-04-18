# The Cool Data Scientists
# Heart Disease Dataset
# Members: Sneha Jaikumar, Sarthi Patil, Graham Caron, Gloria Su

install.packages("tidyverse")
library(tidyverse)
library(readr)

heartFailure <- read_csv("heart_failure_clinical_records_dataset.csv")
typeof(heartFailure)
class(heartFailure)
names(heartFailure)
ncol(heartFailure)
nrow(heartFailure)
length(heartFailure$anaemia)
filtered <- filter(heartFailure, diabetes == 1)
filtered
select(heartFailure, serum_creatinine, high_blood_pressure)
arrange(heartFailure, platelets)
arrange(heartFailure, desc(serum_sodium))


plot(serum_creatinine~smoking, data = heartFailure)
plot(ejection_fraction~smoking, data = heartFailure)
plot(creatinine_phosphokinase~high_blood_pressure, data = heartFailure)
plot(creatinine_phosphokinase~DEATH_EVENT, data = heartFailure)
plot(serum_creatinine~ejection_fraction, data = heartFailure)
plot(creatinine_phosphokinase~anaemia, data = heartFailure)
plot(serum_sodium~platelets, data = heartFailure)
plot(platelets~smoking, data = heartFailure)

plot(heartFailure$age, heartFailure$platelets)
model.lm <- lm(platelets~age, data = heartFailure)
plot(model.lm, which = 1:2)
     #Plot of regression model between platelets and age. The Q-Q plot shows the residuals are close to the line of normality, but the first plot shows that many of the residuals are far from zero.
  


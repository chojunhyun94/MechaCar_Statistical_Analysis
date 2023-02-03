library(dplyr)

#Part 1
file <- read.csv('Resources/MechaCar_mpg.csv')
model<-lm(mpg~.,file)
summary(model)

#Part 2
file2 <- read.csv('Resources/Suspension_Coil.csv')
total_summary <- file2 %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

lot_summary <- file2 %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

#Part 3
t.test(file2$PSI, mu=1500)

t.test(subset(file2$PSI,file2$Manufacturing_Lot == "Lot1"), alternative = 'two.sided', mu=1500)

t.test(subset(file2$PSI,file2$Manufacturing_Lot == "Lot2"), alternative = 'two.sided', mu=1500)

t.test(subset(file2$PSI,file2$Manufacturing_Lot == "Lot3"), alternative = 'two.sided', mu=1500)

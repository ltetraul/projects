# Step 1: Load Data
library(readxl)
nbagamestats <- read_excel("IU/IUPUI/SPRING 2024/I421 Data Mining/Final/nbagamestats.xlsx")
View(nbagamestats)

# Step 2: Create Boxplot
boxplot(PTS ~ Age, data = nbagamestats,
        xlab = "Age", ylab = "Points Per Game",
        main = "Boxplot of Points Per Game by Age")
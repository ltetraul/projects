# Step 1: Load Data
library(readxl)
nbagamestats <- read_excel("IU/IUPUI/SPRING 2024/I421 Data Mining/Final/nbagamestats.xlsx")
View(nbagamestats)

# Step 2: Find the top 8 NBA teams
top_teams <- head(names(sort(table(nbagamestats$Tm), decreasing = TRUE)), 8)

# Step 3: Subset data for the top 8 teams
nbagamestats_top_teams <- subset(nbagamestats, Tm %in% top_teams)

# Step 4: Create Boxplot
boxplot(PTS ~ Tm, data = nbagamestats_top_teams,
        xlab = "NBA Team", ylab = "Points Per Game",
        main = "Boxplot of Points Per Game by Top 8 NBA Teams")


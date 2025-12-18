# Step 1: Load Required Packages
library(readxl)
library(ggplot2)

# Step 2: Load Data
nbagamestats <- read_excel("IU/IUPUI/SPRING 2024/I421 Data Mining/Final/nbagamestats.xlsx")

# Step 3: Calculate average points per game for each player
player_avg_points <- tapply(nbagamestats$PTS, nbagamestats$players, mean)

# Step 4: Find top 10 players
top_10_players <- sort(player_avg_points, decreasing = TRUE)[1:10]

# Step 5: Create a data frame for the top 10 players
top_10_df <- data.frame(players = names(top_10_players), avg_points = top_10_players)

# Step 6: Create Bar Graph
ggplot(data = top_10_df, aes(x = reorder(players, -avg_points), y = avg_points)) +
  geom_bar(stat = "identity", fill = "skyblue") +
  labs(x = "NBA Player", y = "Average Points Per Game",
       title = "Top 10 NBA Players with Highest Average Points Per Game") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

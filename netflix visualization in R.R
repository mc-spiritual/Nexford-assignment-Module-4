library(dplyr)
library(ggplot2)
library(tidyr)

df <- read.csv("netflix_data.csv")

Netflix_shows_movies <- df

# Count the occurrences of each rating
ratings_count <- Netflix_shows_movies %>%
  filter(!is.na(rating)) %>%
  count(rating, sort = TRUE)

# Plot the ratings distribution
ggplot(ratings_count, aes(x = reorder(rating, -n), y = n, fill = rating)) +
  geom_bar(stat = "identity") +
  labs(title = "Distribution of Content Ratings on Netflix",
       x = "Rating",
       y = "Number of Shows") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  guides(fill = FALSE)


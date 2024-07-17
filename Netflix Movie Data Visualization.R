# set the working directory to the directory containing the cleaned dataset

setwd("C:/Users/idehe/Netflix movie data")
print("Current working directory:")
print(getwd())

# install the necessary packages

if (!require(ggplot2)){
  install.packages("ggplot2")
}

# Load the necessary libraries
library(ggplot2)

# Read the cleaned dataset into R
netflix_data <- read.csv('Netflix_movies_shows1.csv')


# Create a ggplot object and specify data and aesthetics
p <- ggplot(netflix_data, aes(x = rating))

# Create a bar plot of rating distribution
p + geom_bar(fill = "skyblue") + 
  labs(title = "Rating Distribution", x = "rating", y = "Count") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Rotate x-axis labels for better readability

library(tidyverse)
library(ratdat)


complete_old |>
  summarize(hindfoot_mean = mean(hindfoot_length, na.rm = TRUE),
            hindfoot_max = max(hindfoot_length, na.rm = TRUE),
            count = n(),
            .by = c("species", "plot_type"))
#".by" can be used in place of the group_by function.

my_vector <- c(2,6,12,24,32)

my_vector[3] #this returns what is at position 3.

my_vector[c(1,5)] #this returns what is at position 1 and 5.

my_vector[1:4]

i <- 2
my_vector[i] <- my_vector[i]*10 #multiplies the value in position 2

my_matrix <- matrix(data = 100, nrow = 3, ncol = 4) #returns a matrix where all the values are 100.
#in a matrix, all data is the same data type.

#within the brakckets, rows are the first value and columns are the second.
#the code below replaces the value at 2,3 with the new value calculated on the right of the <-
my_matrix[2,3] <- my_matrix[2,3] / 10

my_matrix[3]

i <- 2
my_matrix[i,3]

my_matrix <- my_matrix * 100

#an array returns 4 dimensions of 2 by 3 matrices that all have 100 as their sole value.
my_array <- array(100, dim = c(2,3,4))

my_array[2,1,3] <- my_array[2,1,3] / 10 #2 is the row, 1 is the column, 3 is the dimension.

complete_old[1, 3] #you can use brackets to access a data frame

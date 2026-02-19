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



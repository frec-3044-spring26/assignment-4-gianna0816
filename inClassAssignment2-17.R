library(tidyverse)
library(ratdat)

ggplot(data = complete_old, aes(weight, hindfoot_length)) +
  geom_point(alpha = 0.2, color = "red4")

ggplot(data = complete_old, aes(weight, hindfoot_length, color = plot_type)) +
  geom_point(alpha = 0.2) +
  scale_colour_viridis_d()

ggplot(complete_old, aes(weight, hindfoot_length, color = plot_type)) +
  geom_point(alpha = 0.2) +
  scale_x_log10() +
  scale_y_log10()

ggplot(complete_old, aes(plot_type, hindfoot_length)) +
  geom_boxplot()

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

ggplot(complete_old, aes(plot_type, hindfoot_length,
                         fill = plot_type)) +
  geom_boxplot() +
  geom_jitter(aes(color = plot_type), alpha = 0.2) +
  geom_boxplot() +
  scale_x_discrete(labels = label_wrap_gen(width = 10)) +
  theme_bw() +
  theme(axis.title = element_text(size = 14, color = "red4"), legend.position = "none") +
  labs(title = "Rodent Size by Plot Type", x = "Plot Type", y = "Hindfoot Length (mm)") +
  facet_wrap(vars(sex), nrow = 1)

species_count <- complete_old |>
  group_by(species) |>
  summarize(count = n()) |>
  arrange(desc(count)) |>
  slice(1:5)

ggplot(complete_old, aes(plot_type, hindfoot_length,
                         fill = plot_type)) +
  geom_boxplot() +
  geom_jitter(aes(color = plot_type), alpha = 0.2) +
  geom_boxplot() +
  scale_x_discrete(labels = label_wrap_gen(width = 10)) +
  theme_bw() +
  theme(axis.title = element_text(size = 14, color = "red4"), legend.position = "none") +
  labs(title = "Rodent Size by Plot Type", x = "Plot Type", y = "Hindfoot Length (mm)") +
  facet_grid(rows = vars(sex), cols = vars(species))

#Tidyingg data to 5 most common species
species_count <- complete_old |>
  group_by(species) |>
  summarize(count = n()) |>
  arrange(desc(count)) |>
  slice(1:5)

#Code for Five most common species
complete_old |>
  filter(species %in% species_count$species) |>
  ggplot(aes(plot_type, hindfoot_length,
                           fill = plot_type)) +
  geom_boxplot() +
  geom_jitter(aes(color = plot_type), alpha = 0.2) +
  geom_boxplot() +
  scale_x_discrete(labels = label_wrap_gen(width = 10)) +
  theme_bw() +
  theme(axis.title = element_text(size = 14, color = "red4"), legend.position = "none") +
  labs(title = "Rodent Size by Plot Type", x = "Plot Type", y = "Hindfoot Length (mm)") +
  facet_grid(rows = vars(sex), cols = vars(species))


require(tidyverse)
require(plotly)
require(palmerpenguins)
require(cowplot)

pingus <- palmerpenguins::penguins

summary(pingus)
pingus <- as_tibble(pingus)

pingus %>%
  as_tibble()
  group_by(island) %>%
  count(species)

billL <- pingus %>%
  ggplot(aes(x =island, y = bill_length_mm, fill = species)) +
  geom_bar(stat = "identity", position = position_dodge(), show.legend = FALSE) +
  theme_cowplot() +
  labs(x = "") +
  scale_fill_manual(values = c("Adelie" = "firebrick", "Chinstrap" = "midnightblue", "Gentoo" = "gold"))

billD <- pingus %>%
  ggplot(aes(x =island, y = bill_depth_mm, fill = species)) +
  geom_bar(stat = "identity", position = position_dodge(), show.legend = FALSE) +
  theme_cowplot() +
  labs(x = "") +
  scale_fill_manual(values = c("Adelie" = "firebrick", "Chinstrap" = "midnightblue", "Gentoo" = "gold"))

flipperL <- pingus %>%
  ggplot(aes(x =island, y = flipper_length_mm, fill = species)) +
  geom_bar(stat = "identity", position = position_dodge(), show.legend = FALSE) +
  theme_cowplot() +
  labs(x = "") +
  scale_fill_manual(values = c("Adelie" = "firebrick", "Chinstrap" = "midnightblue", "Gentoo" = "gold"))

bodyG <- pingus %>%
  ggplot(aes(x =island, y = body_mass_g, fill = species)) +
  geom_bar(stat = "identity", position = position_dodge()) +
  theme_cowplot() +
  labs(x = "") +
  scale_fill_manual(values = c("Adelie" = "firebrick", "Chinstrap" = "midnightblue", "Gentoo" = "gold"))

plot_grid(billL, billD, flipperL, bodyG, ncol = 2, rel_widths = c(1,1,1,3))
  





library(here)
library(dplyr)
library(ggplot2)
library(ggrepel)

gapminder_data <- read.csv(here::here("data", "generated", "gapminder.csv"))

# no scientific notation
options(scipen = 999)

# transform population to millions
gapminder_data <- gapminder_data %>%
  mutate(pop = pop / 1e6)

# Select top 20 countries by population in 2007
top20 <- gapminder_data %>%
  filter(year == 2007) %>%
  arrange(desc(pop)) %>%
  slice(1:20)

fig_life_expectancy <-
  ggplot(subset(gapminder_data, year == 2007), aes(gdpPercap, lifeExp)) +
  geom_point(aes(size = pop, color = continent), alpha = 0.7) +
  geom_text_repel(
    data = top20,
    aes(label = country),
    size = 3,
    max.overlaps = 20,
    nudge_y = -5, # nudge labels up
    segment.color = "grey30", # line color
    segment.size = 0.4, # line thickness
    direction = "x" # prefer horizontal nudging
  ) +
  scale_x_log10() +
  theme_minimal() +
  labs(title = "Life Expectancy vs. GDP per Capita (2007)",
       x = "GDP per Capita (log scale)",
       y = "Life Expectancy",
       size = "pop in million")

ggsave(here("output", "figures",
            "fig_life_expectancy.pdf"),
      fig_life_expectancy,
      width = 8,
      height = 6
      )

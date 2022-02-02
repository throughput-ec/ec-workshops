# Loading libraries
suppressMessages(library(tidyverse))
library(gapminder)
library(countrycode)
library(ggthemes)
options(warn=-1)

# Creating the data
gapminder_data <- gapminder %>%
filter(year == "2007") %>%
mutate(
  pop2 = pop + 1,
  continent = case_when(
    continent == "Oceania" ~ "Asia",
    TRUE ~ as.character(continent)
  ) %>% as.factor %>% 
    fct_relevel("Asia", "Americas", "Europe", "Africa")
) 

world <- map_data("world") %>%
  filter(region != "Antarctica") %>% 
  mutate(
    continent = countrycode(sourcevar = region,
                            origin = "country.name",
                            destination = "continent"),
    continent = case_when(
      continent == "Oceania" ~ "Asia",
      TRUE ~ as.character(continent)
    ) %>% as.factor %>% 
      fct_relevel("Asia", "Americas", "Europe", "Africa")
  ) %>% 
  drop_na(continent)

# Plotting the data
gapminder_plot <- gapminder_data %>%
ggplot(aes(x = gdpPercap, y = lifeExp)) +
  geom_point(aes(size = pop, color = continent)) +
  geom_point(aes(size = pop2), color = "black", shape = 21) +
  scale_x_log10(breaks = c(500, 1000, 2000, 4000,
                           8000, 16000, 32000, 64000)) +
  scale_y_continuous(breaks = seq(0, 90, by = 10)) +
  scale_color_manual(values = c("#F15772", "#7EEB03",
                                "#FBE700", "#54D5E9"))  +
 # Scale properly
  scale_size_continuous(range = c(1, 30)) +
  guides(size = FALSE, color = "none") +
# Change labels
  labs(
    x = "Income",
    y = "Life expectancy"
  ) +
  # Remove grey background
  theme_minimal()

world_plot <- ggplot(data = world) + 
  geom_map(map = world,
           aes(x=long, y=lat, group = group, map_id = region,
               fill = continent)) +
  theme_map() +
  scale_fill_manual(values = c("#F15772", "#7EEB03",
                               "#FBE700", "#54D5E9")) +
  guides(fill = FALSE) +
  theme(
    plot.background = element_rect(color = "#B8C2CC", fill = NA)
  )

# Putting it together

gapminder_plot + 
  annotation_custom(grob = ggplotGrob(world_plot), 
                    xmin = log10(800), 
                    xmax = log10(650000),
                    ymin = 5, 
                    ymax = 42) +
  labs(
    title = "Life Expectancy and Income in 2007") + 
  theme(
    plot.margin = unit(rep(1, 4), "cm"),
    plot.title = element_text(color = "#22292F", hjust = 0,
                              margin = margin(b = 15),
                              size = 30,
                              face = "bold",
                              family = "Titillium Web"),
    plot.subtitle = element_text(color = "#3D4852", hjust = 0,
                                 margin = margin(b = 35),
                                 size = 17,
                                 lineheight = 1.1,
                                 family = "Titillium Web")
  )
# Loading libraries
suppressMessages(library(tidyverse))
library(gapminder)
library(countrycode)


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

glimpse(world, width = 50)
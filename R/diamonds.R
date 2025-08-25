



data("diamonds",package="ggplot2")
diamonds


diamonds %>% select(carat,price)

elite_diamonds <- diamonds %>% filter(price > 2000 & cut == "Premium")
View(elite_diamonds)
View(diamonds)


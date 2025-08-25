# Let's use the default diamonds dataset to perform an exploratory analysis
#[The visualizations can be found in the plots folder]

# we import the necessary libraries

library(ggplot2)
library(dplyr)
library(tidyverse)


# We import the 'diamonds' dataframe and read it like a csv file
diamonds = read_csv(diamonds)

#Preview the dataframe
View(diamonds)


### Suppose you want to filter the diamonds with the max number of cuts.

## We use the next command



best_diamonds = diamonds %>% filter(cut == "Ideal")

### Here we define a variable which filters the diamonds with the best cut.




### Suppose we want to visualize all diamonds grouped by cut
# Then we will use a barplot to visualize all quantities.

ggplot(data = diamonds,aes(x=cut)) + 
  geom_bar() +
  labs(title="Diamonds count grouped by cut")
# Now, let's visualize it 









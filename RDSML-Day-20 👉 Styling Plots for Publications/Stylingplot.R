#styling plots for publications

library(ggplot2)
install.packages("ggthemes")
library(ggthemes)
install.packages("virdislite")
library(viridisLite)

#sample data loading

df = mtcars
df$cyl = as.factor(df$cyl)

#Styling plot

p = ggplot(df,aes(x = wt, y = mpg, color = cyl)) +
  geom_point(size= 3)+
  scale_color_viridis_d(name = "cylinders") +
  labs(
    title = "Fuel Efficiency by Car Weight",
    x = "Weight (1000 lbs)",
    y = "Miles per Gallon"
    
  ) +
  theme_classic(base_size = 14, base_family = "serif") +
  theme(plot.title = element_text(face = "bold", size = 16, hjust = 0.5),
        axis.title = element_text(face = "bold", size = 14),
        axis.text = element_text(size = 12),
        legend.position = "right",
        legend.title = element_text(face = "bold"),
        legend.text = element_text(size = 12)
  )

#Saving the plot for publication

ggsave("publication_ggplot.png", p , width = 6, height = 4, dpi = 300)

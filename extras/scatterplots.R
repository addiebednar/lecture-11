library(ggplot2)
library(ggstatsplot)
library(prener)

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point(size = 4, position = "jitter") +
  geom_smooth(method = "lm", color = "#ff0000", size = 2) +
  theme(text = element_text(size=28))

cp_plotSave("extras/images/scatterplot-01.png", preset = "sm", dpi = 500)

ggplot(data = mpg, mapping = aes(x = displ, y = hwy, color = drv)) +
  geom_point(size = 4, position = "jitter") +
  theme(text = element_text(size=28))

cp_plotSave("extras/images/scatterplot-02.png", preset = "sm", dpi = 500)  

ggplot(data = mpg, mapping = aes(x = displ, y = hwy, color = drv)) +
  geom_point(size = 4, position = "jitter") +
  geom_smooth(method = "lm", size = 2) +
  theme(text = element_text(size=28))

cp_plotSave("extras/images/scatterplot-03.png", preset = "sm", dpi = 500) 

ggplot(data = mpg, mapping = aes(x = displ, y = hwy, color = drv)) +
  geom_point(size = 4, position = "jitter") +
  geom_smooth(method = "lm", mapping = aes(linetype = drv), size = 2) +
  theme(text = element_text(size=28))

cp_plotSave("extras/images/scatterplot-04.png", preset = "sm", dpi = 500) 

ggplot(data = mpg, mapping = aes(x = displ, y = hwy, color = drv)) +
  geom_point(size = 4, position = "jitter") +
  facet_grid(. ~ drv) +
  theme(text = element_text(size=28))

cp_plotSave("extras/images/scatterplot-05.png", preset = "sm", dpi = 500)  


ggplot(data = mpg, mapping = aes(x = displ, y = hwy, color = drv)) +
  geom_point(size = 4, position = "jitter") +
  geom_smooth(method = "lm", size = 2) +
  facet_grid(. ~ drv) +
  theme(text = element_text(size=28))

cp_plotSave("extras/images/scatterplot-06.png", preset = "sm", dpi = 500)  

png("extras/images/statsplot-01.png", width = 960, height = 540)
ggscatterstats(data = mpg, x = displ, y = hwy)
dev.off() 

breakfast <- data.frame(
  ham = c(TRUE, FALSE, TRUE, FALSE),
  eggs = c("Sunny", "Poached", NA, "Sunny"), 
  spam = c(2, 1, 3, 4),
  stringsAsFactors = FALSE)
 
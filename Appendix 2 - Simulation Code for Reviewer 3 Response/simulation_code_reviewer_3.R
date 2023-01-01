# simulation_code_reviewer_3.R generates a graphical example of the different impacts
# of SP on streamflow signatures given the same values of Spearman correlations
# Used in the Response to Reviewer 3
# Author: Edward Le

library(tidyverse)
library(ggplot2)
library(ggthemes)

# Load data
y1_data <- read_csv("y1_data.csv")
y2_data <- read_csv("y2_data.csv")

y1_annotation <- expression(bold(Y[1] ~ "= Log (X) & STD (Y) = 0.3183 & " ~ bolditalic("\u03C1") ~ " = 1"))
y2_annotation <- expression(bold(Y[2] ~ "= 10 Log (X) & STD (Y) = 3.183 & " ~ bolditalic("\u03C1") ~ " = 1"))

# Plot data
plot <- ggplot() +
    geom_point(aes(x, y), y1_data, colour = "#117BC1", size = 3) +
    geom_function(fun = function(x) log10(x), colour = "#117BC1", size = 1.5) +
    geom_point(aes(x, y), y2_data, colour = "#DD6632", shape = 21, size = 3, stroke = 2) +
    geom_function(fun = function(x) 10 * log10(x), colour = "#DD6632", size = 1.5) +
    annotate("text", x = 6.25, y = 1.25, label = y1_annotation, parse = TRUE, colour = "#117BC1", size = 6) +
    annotate("text", x = 7, y = 6.5, label = y2_annotation, parse = TRUE, colour = "#DD6632", size = 6) +
    scale_x_continuous(position = "top", breaks = seq(0, 10, 1), limits = c(1, 10), expand = c(0, 0), sec.axis = dup_axis()) +
    scale_y_continuous(position = "right", breaks = seq(0, 10, 2), limits = c(0, 10), expand = c(0, 0), sec.axis = dup_axis()) +
    xlab("X (Snow persistence)") +
    ylab("Y (Streamflow signature)") +
    coord_cartesian(clip = "off") +
    theme_few() +
    theme(
        axis.ticks.length = unit(-0.25, "cm"),
        axis.text.x.top = element_blank(),
        axis.text.y.right = element_blank(),
        axis.title.x.top = element_blank(),
        axis.title.y.right = element_blank(),
        axis.text = element_text(size = 12)
    )
ggsave("fig01_response_to_reviewer_3.png", plot, width = 12, height = 6)
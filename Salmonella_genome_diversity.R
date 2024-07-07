#Figure 1: Stacked bar charts to display diversity of the Salmonella.
####Code for the final 4 graphs to be added together:
library(cowplot)
library(egg)
library(ggpubr)
library(tidyr)
library(dplyr)
library(reshape2)
library(ggplot2)

#Number of genomes by host category
host <- read.csv('total_host_hh.csv')

host_melt <- melt(host, id.vars = "HH")

bar <- ggplot(host_melt, aes(x = factor(HH, level = level_order), y = value, fill = variable)) + 
  geom_bar(stat = "identity") +
  scale_fill_discrete(name = "Host", labels = c("Animal", "Environment", "Human")) +
  scale_x_discrete(name = "Household") +
  scale_y_continuous(name = "Number of genomes", breaks = seq("0", "40", 10), limits = c(0, 40)) +
  theme_light() +
  theme(axis.text.x = element_text(colour = "black", size = 10, angle = 90),
        axis.title.y = element_text(colour = "black", size = 10),
        axis.title.x = element_text(colour = "black", size = 10),
        legend.position = "top") 
bar

###All host categories

meta_extra_env <- read.csv('meta_env_st_wide_wide_extra.csv')

meta_env_st_wide_wide_melt_extra <- melt(meta_extra_env, id.vars = "HH")
meta_env_st_wide_wide_melt_extra

bar_hh <-ggplot(meta_st_wide_wide_melt_extra, aes(x = factor(HH, level = level_order), y = value, fill = variable)) + 
  geom_bar(stat = "identity") +
  scale_x_discrete(name = "Household") +
  scale_y_continuous(name = "Number of genomes", breaks = seq("0", "40", 10), limits = c(0, 40)) +
  theme_light() +
  theme(axis.text = element_text(colour = "black", size = 10),
        axis.title.y = element_text(size = 10, colour = "black"),
        axis.title.x = element_text(size = 10, colour = "black", vjust = -0.5),
        legend.position = 'none',
        axis.text.x = element_text(angle = 90, hjust = 1),
        axis.text.y = element_text(angle = 360)) 
bar_hh

#Env
bar_hh_env <-ggplot(meta_env_st_wide_wide_melt_extra, aes(x = factor(HH, level = level_order), y = value, fill = variable)) + 
  geom_bar(stat = "identity") +
  scale_x_discrete(name = "Household") +
  scale_y_continuous(name = "Number of genomes", breaks = seq("0", "5", 5), limits = c(0, 5)) +
  theme_light() +
  theme(axis.text = element_text(colour = "black", size = 10),
        axis.title.y = element_text(size = 10, colour = "black"),
        axis.title.x = element_text(size = 10, colour = "black", vjust = -0.5),
        legend.position = 'none',
        axis.text.x = element_text(angle = 90, hjust = 1)) 
bar_hh_env

#Human
bar_hh_hum <-ggplot(meta_hum_st_wide_wide_melt_extra, aes(x = factor(HH, level = level_order), y = value, fill = variable)) + 
  geom_bar(stat = "identity") +
  scale_x_discrete(name = "Household") +
  scale_y_continuous(name = "Number of genomes", breaks = seq("0", "30", 10), limits = c(0, 30)) +
  theme_light() +
  theme(axis.text = element_text(colour = "black", size = 10),
        axis.title.y = element_text(size = 10, colour = "black"),
        axis.title.x = element_text(size = 10, colour = "black", vjust = -0.5),
        legend.position = 'none',
        axis.text.x = element_text(angle = 90, hjust = 1)) 
bar_hh_hum

#Animal
bar_hh_an <-ggplot(meta_an_st_wide_wide_melt_extra, aes(x = factor(HH, level = level_order), y = value, fill = variable)) + 
  geom_bar(stat = "identity") +
  scale_x_discrete(name = "Household") +
  scale_y_continuous(name = "Number of genomes", breaks = seq("0", "25", 10), limits = c(0, 25)) +
  theme_light() +
  theme(axis.text = element_text(colour = "black", size = 10),
        axis.title.y = element_text(size = 10, colour = "black"),
        axis.title.x = element_text(size = 10, colour = "black", vjust = -0.5),
        legend.position = 'none',
        axis.text.x = element_text(angle = 90, hjust = 1)) 
bar_hh_an

all_hh <- plot_grid(bar, bar_hh, bar_hh_an, bar_hh_env, bar_hh_hum, nrow = 5, ncol = 1, rel_heights = c(1.55, 1.25, 1, 1, 1, 1))
all_hh
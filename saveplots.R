
library(tidyverse)
library(lubridate)
library(stringr)

df_newyork <- read_rds("data/newyork_2018.rds")

df_ithaca <- df_newyork %>%
  filter(workdate >"2018-03-31",
         workdate < "2018-07-01") %>%
  filter(str_detect(provname, "BEECHTREE|CAYUGA RIDGE|KENDAL AT ITHACA|OAK HILL"))


ggplot(data = df_ithaca) +
  geom_path(mapping = aes(x = workdate, y = residents_per_cna, col = str_trunc(provname, 10) ), size = 0.3 ) +
  geom_point(mapping = aes(x = workdate, y = residents_per_cna, col = str_trunc(provname, 10)), size = 1.5) +
  labs(x = "",
       y = "Residents per CNA",
       title = "Staffing at Long Term Care Facilities, Ithaca NY",
       subtitle = "Residents per CNA by day, April - June 2018" ) +
  theme(legend.title = element_blank(),
        panel.grid.minor.x = element_blank(),
        panel.grid.minor.y = element_blank(),
        axis.text.x = element_text(angle = 90, hjust = 1, vjust = 0.5)) +
  facet_grid(.~day) +
  scale_y_continuous(limits = c(7, 19), breaks = seq(8,18, by = 2))

ggsave(filename = "output/ithaca_cna_staffing_pbj_2018_apr-jun.png",
       width=11,
       height=7,
       dpi = 600)

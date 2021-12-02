library(tidyverse)
library(lubridate)
library(tsibble)     # yearmonth

# Sys.setenv(LANG = "en")

songs <- songs %>%
  mutate(month_org = month,
         month_date = yearmonth(month_org),
         month = month(month_date, label = TRUE, locale = "English"),
         year = year(month_date),
         year_month = format(yearmonth(month_org), "%Y-%m")) %>%
  select(year_month, month, year, -month_org, -month_date, everything())

albums <- albums %>%
  mutate(month_org = month,
         month_date = yearmonth(month_org),
         month = month(month_date, label = TRUE, locale = "English"),
         year = year(month_date),
         year_month = format(yearmonth(month_org), "%Y-%m")) %>%
  select(year_month, month, year, -month_org, -month_date, everything())

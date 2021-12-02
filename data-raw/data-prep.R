library(tidyverse)
library(lubridate)
library(tsibble)     # yearmonth
library(here)

version <- "0-3-0063"

songs2000  <- read_csv(here("data-raw", paste0("chart2000-songmonth-",  version, ".csv")),
                   na = c("", "-"))[]

albums2000 <- read_csv(here("data-raw", paste0("chart2000-albummonth-", version, ".csv")),
                   na = c("", "-"))[]

# Sys.setenv(LANG = "en")

songs2000 <- songs2000 %>%
  mutate(month_org = month,
         month_date = yearmonth(month_org),
         month = month(month_date, label = TRUE, locale = "English"),
         year = year(month_date),
         year_month = format(yearmonth(month_org), "%Y-%m")) %>%
  select(year_month, month, year, -month_org, -month_date, position:au)

attr(songs2000, "version") <- version

albums2000 <- albums2000 %>%
  mutate(month_org = month,
         month_date = yearmonth(month_org),
         month = month(month_date, label = TRUE, locale = "English"),
         year = year(month_date),
         year_month = format(yearmonth(month_org), "%Y-%m")) %>%
  select(year_month, month, year, -month_org, -month_date, position:au)

attr(albums2000, "version") <- version

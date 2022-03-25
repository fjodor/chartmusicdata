# library(tidyverse)
# library(lubridate)
# library(tsibble)     # yearmonth
# library(here)
#
# version <- "0-3-0063"
#
# songs  <- read_csv(here("data-raw", paste0("chart2000-songmonth-",  version, ".csv")),
#                    na = c("", "-"))[]
#
# albums <- read_csv(here("data-raw", paste0("chart2000-albummonth-", version, ".csv")),
#                    na = c("", "-"))[]
#
# # Sys.setenv(LANG = "en")
#
# songs <- songs %>%
#   mutate(month_org = month,
#          month_date = yearmonth(month_org),
#          month = month(month_date, label = TRUE, locale = "English"),
#          year = year(month_date),
#          year_month = format(yearmonth(month_org), "%Y-%m")) %>%
#   select(year_month, month, year, -month_org, -month_date, position:au)
#
# attr(songs, "version") <- version
#
# albums <- albums %>%
#   mutate(month_org = month,
#          month_date = yearmonth(month_org),
#          month = month(month_date, label = TRUE, locale = "English"),
#          year = year(month_date),
#          year_month = format(yearmonth(month_org), "%Y-%m")) %>%
#   select(year_month, month, year, -month_org, -month_date, everything())
#
# albums <- albums %>%
#   mutate(         month_date = yearmonth(month_org),
#                   month = month(month_date, label = TRUE, locale = "English"),
#                   year = year(month_date),
#                   year_month = format(yearmonth(month_org), "%Y-%m")) %>%
#   select(year_month, month, year, -month_org, -month_date, position:au)
#
# attr(albums, "version") <- version

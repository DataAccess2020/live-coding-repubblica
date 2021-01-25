url <- "https://www.repubblica.it/"

# install./packages("httr")
library(tidyverse)
library(rvest)
library(httr)

# 1. Check robots.txt
browseURL(str_c(url, "robots.txt"))

# 2. Download files
dir.create("rep_page")
download.file(url = url, destfile = here::here("rep_page", "index_25012021.html"))

library(stringr)
library(lubridate)
library(rlist)
library(caret)
library(magrittr)
library(dplyr)
library(tidyr)
library(broom)
library(ggplot2)
library(readr)
options(tibble.width = Inf)

gender_age_train <- read_csv('gender_age_train.csv', col_types = 'ccic')
app_events <- read_csv('app_events.csv', col_types = 'ccii')
app_labels <- read_csv('app_labels.csv', col_types = 'cc')
events <- read_csv('events.csv', col_types = 'ccTdd')
label_categories <- read_csv('label_categories.csv', col_types = 'cc')
phone_brand_device_model <- read_csv('phone_brand_device_model.csv', col_types = 'ccc')

app_info <- app_labels %>% 
  inner_join(label_categories, by = 'label_id')
app_info$label_id <- NULL

event_info <- app_events %>% 
  inner_join(events, by = 'event_id')

device_info <- gender_age_train %>% 
  inner_join(phone_brand_device_model, by = 'device_id')

rm(gender_age_train, app_events, app_labels, events, label_categories, phone_brand_device_model)
gc()

# Cleaning app category
app_info$category <- app_info$category %>% 
  tolower %>% 
  str_trim %>% 
  str_replace_all(pattern = '( 1$)|(^1 )',replacement = '') %>% 
  str_trim

# changing phone_brand to dummy names in english
replace_chinese_with_english <- function(x, prefix) {
  uniq_vals <- unique(x)
  to_replace <- uniq_vals %>% str_detect('^[[a-zA-Z0-9\ ]]+$') %>% not
  not_to_replace <- uniq_vals[!to_replace]
  to_replace <- uniq_vals[to_replace]
  
  new_names <- paste0(prefix, seq_along(to_replace))
  
  new_old_map <- c(not_to_replace, new_names)
  names(new_old_map) <- c(not_to_replace, to_replace)
  
  new_old_map[x] %>% unname
}

device_info$phone_brand   <- replace_chinese_with_english(device_info$phone_brand, 'brand ')
device_info$device_model <- replace_chinese_with_english(device_info$device_model, 'model ')

device_event_info <- event_info %>% 
  inner_join(device_info, by = 'device_id')


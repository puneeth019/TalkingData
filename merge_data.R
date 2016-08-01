#This script is used to read data  using `readr` package

setwd("~Desktop/TalkingData/") # set working directory

library(readr)  # load `readr` package
library(dplyr)   # load `dplyr` pacakge

app_events <- read_csv("app_events.csv/app_events.csv", col_types = "icii")
app_labels <- read_csv("app_labels.csv/app_labels.csv", col_types = "ci")
events <- read_csv("events.csv/events.csv", col_types = "iccdd")
gender_age_train <- read_csv("gender_age_train.csv/gender_age_train.csv", col_types = "ccic")
label_categories <- read_csv("label_categories.csv/label_categories.csv", col_types = "ic")
phone_brand_device_model <- read_csv("phone_brand_device_model.csv/phone_brand_device_model.csv", col_types = "ccc")

#merge `app_labels` & `label_categories` to create `app_label_cat`
app_label_cat <- merge(x = app_labels, y = label_categories, all = TRUE, by = 'label_id')
app_label_cat <- tbl_df(app_label_cat)  # convert into `tibble`

#merge `app_events` & `app_label_cat` to create `app_event_cat`
app_event_cat <- merge(x = app_events, y = app_label_cat, all.x = TRUE, by = 'app_id')
app_event_cat <- tbl_df(app_event_cat)  # convert into `tibble`

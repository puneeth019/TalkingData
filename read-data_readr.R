#This script is used to read data  using `dplyr` package

library(readr)  # load `readr` package
setwd("/TalkingData/") # set working directory

app_events <- read_csv("app_events.csv/app_events.csv", col_types = "icii")
app_labels <- read_csv("app_labels.csv/app_labels.csv", col_types = "ci")
events <- read_csv("events.csv/events.csv", col_types = "iccii")
gender_age_train <- read_csv("gender_age_train.csv/gender_age_train.csv", col_types = "icic")
label_categories <- read_csv("label_categories.csv/label_categories.csv", col_types = "ic")
phone_brand_device_model <- read_csv("phone_brand_device_model.csv/phone_brand_device_model.csv", col_types = "ccc")

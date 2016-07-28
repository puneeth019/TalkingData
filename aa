library(dplyr)

setwd("C:/Users/lc067/Desktop/TalkingData/")

app_events <- read.csv("app_events.csv/app_events.csv", stringsAsFactors = FALSE)
app_labels <- read.csv("app_labels.csv/app_labels.csv", stringsAsFactors = FALSE)
events <- read.csv("events.csv/events.csv", stringsAsFactors = FALSE)
gender_age_test <- read.csv("gender_age_test.csv/gender_age_test.csv", stringsAsFactors = FALSE)
gender_age_train <- read.csv("gender_age_train.csv/gender_age_train.csv", stringsAsFactors = FALSE)
label_categories <- read.csv("label_categories.csv/label_categories.csv", stringsAsFactors = FALSE)
phone_brand_device_model <- read.csv("phone_brand_device_model.csv/phone_brand_device_model.csv", stringsAsFactors = FALSE)
sample_submission <- read.csv("sample_submission.csv/sample_submission.csv", stringsAsFactors = FALSE)

app_events  <- tbl_df(app_events)
app_labels <- tbl_df(app_labels)
events <- tbl_df(events)
gender_age_test <- tbl_df(gender_age_test)
gender_age_train <- tbl_df(gender_age_train)
label_categories <- tbl_df(label_categories)
phone_brand_device_model <- tbl_df(phone_brand_device_model)
sample_submission <- tbl_df(sample_submission)

events_timestamp <- events$timestamp



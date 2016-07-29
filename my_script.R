library(dplyr)  # load dplyr

options(stringsAsFactors = FALSE) #set global option to read files

setwd("C:/Users/lc067/Desktop/TalkingData/") # set working directory

app_events <- read.csv("app_events.csv/app_events.csv",
                       colClasses = c("integer", "character", "integer", "integer"))
app_labels <- read.csv("app_labels.csv/app_labels.csv",
                       colClasses = c("character", "character"))
events <- read.csv("events.csv/events.csv",
                   colClasses = c(""))
gender_age_test <- read.csv("gender_age_test.csv/gender_age_test.csv",
                            colClasses = c(""))
gender_age_train <- read.csv("gender_age_train.csv/gender_age_train.csv",
                             colClasses = c(""))
label_categories <- read.csv("label_categories.csv/label_categories.csv",
                             colClasses = c(""))
phone_brand_device_model <- read.csv("phone_brand_device_model.csv/phone_brand_device_model.csv", colClasses = c(""))
sample_submission <- read.csv("sample_submission.csv/sample_submission.csv", colClasses = c(""))

app_events  <- tbl_df(app_events)
app_labels <- tbl_df(app_labels)
events <- tbl_df(events)
gender_age_test <- tbl_df(gender_age_test)
gender_age_train <- tbl_df(gender_age_train)
label_categories <- tbl_df(label_categories)
phone_brand_device_model <- tbl_df(phone_brand_device_model)
sample_submission <- tbl_df(sample_submission)

events_timestamp <- events$timestamp

# time taken to read the data with & without "colClasses" option in "read.csv"
systime_with_colClasses <- system.time(read.csv(
  file = "app_events.csv/app_events.csv",
  colClasses = c("integer","character","integer","integer")))
systime_wo_colClasses <- system.time(read.csv(file = "app_events.csv/app_events.csv", stringsAsFactors = FALSE))

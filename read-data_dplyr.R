#This script is used to read data  using `dplyr` package

library(dplyr)  # load `dplyr` package
options(stringsAsFactors = FALSE) #set global option to read files
setwd("/TalkingData/") # set working directory

app_events <- read.csv("app_events.csv/app_events.csv", colClasses = c("numeric", "character", "numeric", "numeric"))
app_labels <- read.csv("app_labels.csv/app_labels.csv", colClasses = c("character", "numeric"))
events <- read.csv("events.csv/events.csv", colClasses = c("numeric", "character", "character", "numeric", "numeric"))
gender_age_test <- read.csv("gender_age_test.csv/gender_age_test.csv", colClasses = c("character"))
gender_age_train <- read.csv("gender_age_train.csv/gender_age_train.csv",
  colClasses = c("character", "character", "numeric", "character"))
label_categories <- read.csv("label_categories.csv/label_categories.csv", colClasses = c("numeric", "character"))
phone_brand_device_model <- read.csv("phone_brand_device_model.csv/phone_brand_device_model.csv",
  colClasses = c("character","character","character"))

#convert "data.frame" into "tibble"
app_events  <- tbl_df(app_events)
app_labels <- tbl_df(app_labels)
events <- tbl_df(events)
gender_age_test <- tbl_df(gender_age_test)
gender_age_train <- tbl_df(gender_age_train)
label_categories <- tbl_df(label_categories)
phone_brand_device_model <- tbl_df(phone_brand_device_model)

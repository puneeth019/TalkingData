#Set Working directory
setwd("~/DA/Kaggle/")

#Check if the directory "TalkingData" exists in the wokring directory
#If not, create one!
if(!dir.exists("TalkingData")){
  dir.create("TalkingData")
}

#Set "TalkingData" as working directory
setwd("./TalkingData/")

#Check if the directory "TalkingData" exists in the wokring directory
#If not, create one!
if(!dir.exists("./data")){
  dir.create("./data")
}

#
#Get urls of the data
gender_age_test_url <- paste("https://kaggle2.blob.core.windows.net/",
                             "competitions-data/kaggle/5340/gender_a",
                             "ge_test.csv.zip?sv=2012-02-12&se=2016-",
                             "07-19T10%3A14%3A44Z&sr=b&sp=r&sig=skKu",
                             "Dxh8Gkr6zGjMp6m%2F%2F6nLJyeNAAvQCd%2FF",
                             "3iwkIKM%3D", sep = "")
app_labels_url <- paste("https://kaggle2.blob.core.windows.net/compe",
                        "titions-data/kaggle/5340/app_labels.csv.zip",
                        "?sv=2012-02-12&se=2016-07-19T10%3A15%3A27Z&",
                        "sr=b&sp=r&sig=36DxPcUfszMFb9jAugcUMeDfJDqid",
                        "X%2F%2Bi3xorf7e8w4%3D", sep = "")
label_categories_url <- paste("https://kaggle2.blob.core.windows.net",
                              "/competitions-data/kaggle/5340/label_",
                              "categories.csv.zip?sv=2012-02-12&se=2",
                              "016-07-19T10%3A15%3A34Z&sr=b&sp=r&sig",
                              "=0P3COvpL0AejZdHkIp53X8q4uFzSf2CoukEU",
                              "D3CGx0Y%3D", sep = "")
phone_brand_device_model_url <- paste("https://kaggle2.blob.core.win",
                                      "dows.net/competitions-data/ka",
                                      "ggle/5340/phone_brand_device_",
                                      "model.csv.zip?sv=2012-02-12&s",
                                      "e=2016-07-19T10%3A15%3A39Z&sr",
                                      "=b&sp=r&sig=EeIxEdcpOdnNPng69",
                                      "K9Z%2BsRTEAXvRc3MI2b5zWgTnz8%",
                                      "3D", sep = "")
sample_submission_url <- paste("https://kaggle2.blob.core.windows.ne",
                               "t/competitions-data/kaggle/5340/samp",
                               "le_submission.csv.zip?sv=2012-02-12&",
                               "se=2016-07-19T10%3A15%3A43Z&sr=b&sp=",
                               "r&sig=0BkoICupaBUsJiLI02nUTVhGGZzc3x",
                               "HrwKA7GQ8Didg%3D", sep = "")
events_url <- paste("https://kaggle2.blob.core.windows.net/competiti",
                    "ons-data/kaggle/5340/events.csv.zip?sv=2012-02-",
                    "12&se=2016-07-19T10%3A15%3A46Z&sr=b&sp=r&sig=y1",
                    "%2B2Ka3Tp4cO7vRjfmrEHCdbNqoz8%2B9rn5BXGXYz204%3",
                    "D", sep = "")
app_events_url <- paste("https://kaggle2.blob.core.windows.net/compe",
                        "titions-data/kaggle/5340/app_events.csv.zip",
                        "?sv=2012-02-12&se=2016-07-19T10%3A15%3A50Z&",
                        "sr=b&sp=r&sig=Q%2BCyPBBkkOZcVSQL8wc%2B1pvI7",
                        "%2BKa0j6ILiAAVtMVlYs%3D", sep = "")
gender_age_train_url <- paste("https://kaggle2.blob.core.windows.net",
                              "/competitions-data/kaggle/5340/gender",
                              "_age_train.csv.zip?sv=2012-02-12&se=2",
                              "016-07-19T10%3A15%3A52Z&sr=b&sp=r&sig",
                              "=k2201%2FUNQpa5iWZSHCqmonuwanbvFCRM5%",
                              "2BRtZJJJpOE%3D", sep = "")

#Check if data is present. If not, download!
if(!file.exists("./data/gender_age_test.zip")){
download.file(url = gender_age_test_url,
              destfile = "./data/gender_age_test.zip")
}
if(!file.exists("./data/app_labels.zip")){
download.file(url = app_labels_url,
              destfile = "./data/app_labels.zip")
}
if(!file.exists("./data/label_categories.zip")){
download.file(url = label_categories_url,
              destfile = "./data/label_categories.zip")
}
if(!file.exists("./data/phone_brand_device_model.zip")){
download.file(url = phone_brand_device_model_url,
              destfile = "./data/phone_brand_device_model.zip")
}
if(!file.exists("./data/sample_submission.zip")){
download.file(url = sample_submission_url,
              destfile = "./data/sample_submission.zip")
}
if(!file.exists("./data/events.zip")){
download.file(url = events_url,
              destfile = "./data/events.zip")
}
if(!file.exists("./data/app_events.zip")){
download.file(url = app_events_url,
              destfile = "./data/app_events.zip")
}
if(!file.exists("./data/gender_age_train.zip")){
download.file(url = gender_age_train_url,
              destfile = "./data/gender_age_train.zip")
}

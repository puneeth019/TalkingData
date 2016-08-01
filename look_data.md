## A look at the data

###*gender_age_train.csv*
The training data set.

```R
gender_age_train <- read_csv("gender_age_train.csv/gender_age_train.csv", col_types = "ccic")
gender_age_train

# A tibble: 74,645 x 4
              device_id gender   age  group
                  <chr>  <chr> <int>  <chr>
1  -8076087639492063270      M    35 M32-38
2  -2897161552818060146      M    35 M32-38
3  -8260683887967679142      M    35 M32-38
4  -4938849341048082022      M    30 M29-31
5    245133531816851882      M    30 M29-31
6  -1297074871525174196      F    24 F24-26
7    236877999787307864      M    36 M32-38
8  -8098239495777311881      M    38 M32-38
9    176515041953473526      M    33 M32-38
10  1596610250680140042      F    36 F33-42
# ... with 74,635 more rows
```

###events.csv, app_events.csv
When a user uses TalkingData SDK, the event gets logged in this data. Each event has an event id, location (lat/long), and the event corresponds to a list of apps in app_events.

```R
events <- read_csv("events.csv/events.csv", col_types = "iccdd")
events

# A tibble: 3,252,950 x 5
   event_id            device_id           timestamp longitude latitude
      <int>                <chr>               <chr>     <dbl>    <dbl>
1         1    29182687948017175 2016-05-01 00:55:25    121.38    31.24
2         2 -6401643145415154744 2016-05-01 00:54:12    103.65    30.97
3         3 -4833982096941402721 2016-05-01 00:08:05    106.60    29.70
4         4 -6815121365017318426 2016-05-01 00:06:40    104.27    23.28
5         5 -5373797595892518570 2016-05-01 00:07:18    115.88    28.66
6         6  1476664663289716375 2016-05-01 00:27:21      0.00     0.00
7         7  5990807147117726237 2016-05-01 00:15:13    113.73    23.00
8         8  1782450055857303792 2016-05-01 00:15:35    113.94    34.70
9         9 -2073340001552902943 2016-05-01 00:15:33      0.00     0.00
10       10 -8195816569128397698 2016-05-01 00:41:31    119.34    26.04
# ... with 3,252,940 more rows

app_events <- read_csv("app_events.csv/app_events.csv", col_types = "icii")
app_events

# A tibble: 32,473,067 x 4
   event_id               app_id is_installed is_active
      <int>                <chr>        <int>     <int>
1         2  5927333115845830913            1         1
2         2 -5720078949152207372            1         0
3         2 -1633887856876571208            1         0
4         2  -653184325010919369            1         1
5         2  8693964245073640147            1         1
6         2  4775896950989639373            1         1
7         2 -8022267440849930066            1         0
8         2  9112463267739110219            1         0
9         2 -3725672010020973973            1         0
10        2  7167114343576723123            1         1
# ... with 32,473,057 more rows
```

###app_labels.csv
Apps and their labels, the `label_id`'s can be used to join with `label_categories`

```R
app_labels <- read_csv("app_labels.csv/app_labels.csv", col_types = "ci")
app_labels

# A tibble: 459,943 x 2
                 app_id label_id
                  <chr>    <int>
1   7324884708820027918      251
2  -4494216993218550286      251
3   6058196446775239644      406
4   6058196446775239644      407
5   8694625920731541625      406
6   8694625920731541625      407
7   1977658975649789753      406
8   1977658975649789753      407
9   7311663864768030840      256
10  5902120154267999338      256
# ... with 459,933 more rows
```


label_categories.csv - apps' labels and their categories in text
```R
label_categories <- read_csv("label_categories.csv/label_categories.csv", col_types = "ic")
label_categories

# A tibble: 930 x 2
   label_id             category
      <int>                <chr>
1         1                 <NA>
2         2       game-game type
3         3     game-Game themes
4         4       game-Art Style
5         5    game-Leisure time
6         6  game-Cutting things
7         7   game-Finding fault
8         8 game-stress reliever
9         9             game-pet
10       10          game-Answer
# ... with 920 more rows
```
phone_brand_device_model.csv - device ids, brand, and models
```R
phone_brand_device_model <- read_csv("phone_brand_device_model.csv/phone_brand_device_model.csv", col_types = "ccc")
phone_brand_device_model

# A tibble: 187,245 x 3
              device_id      phone_brand                     device_model
                  <chr>            <chr>                            <chr>
1  -8890648629457979026 <U+5C0F><U+7C73>                 <U+7EA2><U+7C73>
2   1277779817574759137 <U+5C0F><U+7C73>                             MI 2
3   5137427614288105724 <U+4E09><U+661F>                        Galaxy S4
4   3669464369358936369            SUGAR <U+65F6><U+5C1A><U+624B><U+673A>
5  -5019277647504317457 <U+4E09><U+661F>                    Galaxy Note 2
6   3238009352149731868 <U+534E><U+4E3A>                             Mate
7  -3883532755183027260 <U+5C0F><U+7C73>                            MI 2S
8  -2972199645857147708 <U+534E><U+4E3A>                            G610S
9  -5827952925479472594 <U+5C0F><U+7C73>                      MI One Plus
10 -8262508968076336275             vivo                              S7I
# ... with 187,235 more rows
```

[source](https://www.kaggle.com/c/talkingdata-mobile-user-demographics/data)

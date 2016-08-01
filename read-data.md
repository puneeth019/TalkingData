##Advantages of [`readr`](https://cran.r-project.org/web/packages/readr/index.html) package

###Motivation
All the stuff that's created here is as a part of Kaggle's [Talking-Data](https://www.kaggle.com/c/talkingdata-mobile-user-demographics) competition and my efforts towards learning R.

###Description
In [read-data.R](https://github.com/puneeth019/TalkingData/blob/master/read-data.R) input data is read using `base::read.csv()` command

```R
app_events <- read.csv("app_events.csv/app_events.csv",
                      colClasses = c("integer", "character", "integer", "integer"))
```

Whereas, in [read-data_readr.R](https://github.com/puneeth019/TalkingData/blob/master/read-data_readr.R) data is read using `readr::read_csv()` command

```R
library(readr)  # load `readr` package
app_events <- read_csv("app_events.csv/app_events.csv", col_types = "icii")
```

###Observations
After using the `readr` package the code looks neat & simple as the number of lines in the code are reduced from 22 to 11. And operations such as `options(stringsAsFactors = FASLE)` & converting `data.frame`s into `tibble`s using `tbl_df()` command are not required in the latter script. The width of the code is also reduced due to efficient usage of `col_types` argument in `readr`. One of the main advantage of using `readr` package is that it is a lot faster.

###Comments
Two points to note here are the differences between `base::read.csv()` & `readr::read_csv()` commands and `colClasses` & `col_types` arguments.

###Credits
Thanks [Kaggle](https://www.kaggle.com/) for the motivation and [adam-p](https://github.com/adam-p)'s [Cheatsheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) for Markdown.

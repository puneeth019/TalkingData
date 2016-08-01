### A look at the data

events.csv, app_events.csv - when a user uses TalkingData SDK, the event gets logged in this data. Each event has an event id, location (lat/long), and the event corresponds to a list of apps in app_events.

```R
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




[source](https://www.kaggle.com/c/talkingdata-mobile-user-demographics/data)

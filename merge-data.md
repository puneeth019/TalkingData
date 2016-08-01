### Merge data using `merge` command

Merge `app_labels` & `label_categories` to get the data for apps and the respective categories in the same data.frame

```R
app_label_cat <- merge(x = app_labels, y = label_categories, all = TRUE, by = 'label_id')
app_label_cat <- tbl_df(app_label_cat)  # convert into `tibble`

app_label_cat
# A tibble: 460,366 x 3
   label_id               app_id          category
      <int>                <chr>             <chr>
1         1                 <NA>              <NA>
2         2 -2600987541603275322    game-game type
3         3                 <NA>  game-Game themes
4         4 -2600987541603275322    game-Art Style
5         5 -4507126529409281835 game-Leisure time
6         5  -781493088327916750 game-Leisure time
7         5 -8726376159123685147 game-Leisure time
8         5 -3009285907035616624 game-Leisure time
9         5  4214070236051361526 game-Leisure time
10        5  3489720147367481003 game-Leisure time
# ... with 460,356 more rows
```

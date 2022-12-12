
```{r,message=FALSE}
filtered_stats <- stats %>% filter(assists_per90 > 0)
filtered_stats %>% ggplot(aes(x= assists_per90)) + geom_histogram()
```

```{r,message=FALSE}
filtered_stats$sqrt_assists_per90 <- sqrt(filtered_stats$assists_per90)
filtered_stats %>% ggplot(aes(x= sqrt_assists_per90)) + geom_histogram()
```


```{r,eval=FALSE}
step_interact(terms = 
                ~clearances_per90:dispossessed_per90 +
                dribbles_per90:dispossessed_per90 + 
                sca_per90: touches_att_3rd_per90 +
                sca_per90: passes_into_penalty_area_per90 +
                sca_per90: clearances_per90 +
                touches_att_3rd_per90: passes_into_penalty_area_per90 +
                touches_att_3rd_per90: clearances_per90 +
                xg_per90: interceptions_per90)
```
ggplot(data = midwest) +
  geom_point(mapping = aes(x = popdensity, y = percollege))

ggplot(data = midwest) +
  geom_point(mapping = aes(x = popdensity, y = state))

ggplot(data = midwest) +
  geom_point(mapping = aes(x = county, y = state))

ggplot(data = midwest)

ggplot(data = midwest) +
  geom_point(aes(x = popdensity, y = percollege, shape = state))

ggplot(data = midwest) +
  geom_point(aes(x = popdensity, y = percollege), shape = 3)

ggplot(data = midwest) +
  geom_point(aes(x = popdensity, y = percollege), alpha = 0.2)

ggplot(midwest) +
  geom_point(aes(x = popdensity, y = percollege, shape = 3))


ggplot(mpg, aes(class, hwy)) +
  geom_boxplot()

ggplot(mpg, aes(class, hwy)) +
  geom_jitter() +
  geom_boxplot()

ggplot(mpg, aes(class, hwy)) +
  geom_boxplot() +
  geom_jitter()

ggplot(midwest) +
  geom_point(aes(x = popdensity, y = percollege, color = state)) +
  geom_smooth(aes(x = popdensity, y = percollege),
              se = FALSE)

ggplot(midwest,
       aes(x = popdensity, y = percollege)) +
  geom_point(aes(color = state)) +
  geom_smooth(se = FALSE)

ggplot(midwest,
       aes(x = popdensity, y = percollege, color = state)) +
  geom_point(size = 5) +
  geom_smooth(aes(linetype = state), size = 1.5, se = FALSE) +
  scale_x_continuous("Population Density",
                     breaks = seq(0, 80000, 20000)) +
  scale_y_continuous("Percent College Graduates") +
  scale_color_brewer("State",
                     palette = 'Dark2') +
  scale_linetype_discrete("State") +
  theme_bw(base_size = 18) +
  labs(title = "Example Title",
       subtitle = "Subtitle example")

x <- 1 + 3
x

y = 1 + 3
y

# comments
library(fivethirtyeight)
filter(congress_age, congress < 100)

filter(congress_age, age > 80)
filter(congress_age, is.na(middlename))

filter(congress_age, congress %in% 80:85)

filter(congress_age, (chamber == 'senate' & state == 'IA') | state == 'MN')
filter(congress_age, chamber == 'senate' & state == 'IA' & !incumbent)
filter(congress_age, chamber == 'senate' & state == 'IA' &
         incumbent == FALSE)

print(count(congress_age, party, state, incumbent),
      n = Inf)

arrange(congress_age, -congress)


arrange(
  count(
    filter(congress_age, age > 80),
      party),
  n)

select(congress_age, ends_with('name'))

select(congress_age, first_name = firstname,
       last_name = lastname, everything())


select(congress_age, starts_with('c'))

rename_congress <- rename(congress_age,
                          x_1 = 1,
                          x_2 = 2,
                          x_3 = 3
                          )

select(rename_congress, num_range('x_', 1:3))


select(congress_age, 1, 2)

congress_red <- select(congress_age, congress, chamber, state, party)

mutate(congress_red,
       democrat_ind = ifelse(party %in% c('D', 'I'), 1, 0),
       num_democrat = sum(democrat_ind),
       prop_democrat = mean(democrat_ind),
       max_congress = max(congress)
)


diamonds_newprice <- mutate(diamonds,
       price_carat = price / carat,
       rank_orig_price = min_rank(price),
       rank_new_price = min_rank(price_carat),
       diff_rank = rank_orig_price - rank_new_price
       )

select(diamonds_newprice, price, carat, price_carat,
       rank_orig_price, rank_new_price, diff_rank)



congress_2 <- mutate(congress_age,
                     repub = ifelse(party == 'R', 1, 0)
)

congress_grp <- group_by(congress_2, chamber)

summarise(congress_grp,
          num_repub = sum(repub),
          total = n(),
          prop_repub = num_repub / total,
          mean_repub = mean(repub)
)

congress_grp <- group_by(congress_2, congress, chamber)

summarise(congress_grp,
          num_repub = sum(repub),
          total = n(),
          prop_repub = num_repub / total,
          mean_repub = mean(repub)
)


congress_filter <- filter(congress_age, congress >= 100)
congress_mutate <- mutate(congress_filter, ...)


ufo_date <- read_csv("https://raw.githubusercontent.com/lebebr01/iowa_data_science/master/data/ufo.csv",
                     col_types = list(
                       'Date / Time' = col_datetime(format = "%m/%d/%y %H:%M"),
                       City = col_character(),
                       State = col_character(),
                       Shape = col_character(),
                       Duration = col_character(),
                       Summary = col_character(),
                       Posted = col_character()
                     ))



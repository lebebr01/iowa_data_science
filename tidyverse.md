---
title: "Introduction to tidyverse/R"
author: "Brandon LeBeau"
date: "January 10, 2018"
---

# Course Setup

```r
install.packages("tidyverse")
```


```r
library(tidyverse)
```

# Explore Data

```r
midwest
```

```
## # A tibble: 437 x 28
##      PID    county state  area poptotal popdensity popwhite popblack
##    <int>     <chr> <chr> <dbl>    <int>      <dbl>    <int>    <int>
##  1   561     ADAMS    IL 0.052    66090  1270.9615    63917     1702
##  2   562 ALEXANDER    IL 0.014    10626   759.0000     7054     3496
##  3   563      BOND    IL 0.022    14991   681.4091    14477      429
##  4   564     BOONE    IL 0.017    30806  1812.1176    29344      127
##  5   565     BROWN    IL 0.018     5836   324.2222     5264      547
##  6   566    BUREAU    IL 0.050    35688   713.7600    35157       50
##  7   567   CALHOUN    IL 0.017     5322   313.0588     5298        1
##  8   568   CARROLL    IL 0.027    16805   622.4074    16519      111
##  9   569      CASS    IL 0.024    13437   559.8750    13384       16
## 10   570 CHAMPAIGN    IL 0.058   173025  2983.1897   146506    16559
## # ... with 427 more rows, and 20 more variables: popamerindian <int>,
## #   popasian <int>, popother <int>, percwhite <dbl>, percblack <dbl>,
## #   percamerindan <dbl>, percasian <dbl>, percother <dbl>,
## #   popadults <int>, perchsd <dbl>, percollege <dbl>, percprof <dbl>,
## #   poppovertyknown <int>, percpovertyknown <dbl>, percbelowpoverty <dbl>,
## #   percchildbelowpovert <dbl>, percadultpoverty <dbl>,
## #   percelderlypoverty <dbl>, inmetro <int>, category <chr>
```


# R works as a calculator

```r
1 + 2 - 3
```

```
## [1] 0
```

```r
5 * 7
```

```
## [1] 35
```

```r
2/1
```

```
## [1] 2
```

```r
sqrt(4)
```

```
## [1] 2
```

```r
2^2
```

```
## [1] 4
```

# Can save objects to use later

```r
x <- 1 + 3
x
```

```
## [1] 4
```


```r
x * 3
```

```
## [1] 12
```

# R is case sensitive

```r
case_sensitive <- 10
Case_sensitive
```

```
## Error in eval(expr, envir, enclos): object 'Case_sensitive' not found
```

# R Functions

```r
set.seed(1)
rnorm(n = 10, mean = 0, sd = 1)
```

```
##  [1] -0.6264538  0.1836433 -0.8356286  1.5952808  0.3295078 -0.8204684
##  [7]  0.4874291  0.7383247  0.5757814 -0.3053884
```

```r
set.seed(1)
rnorm(10, 0, 1)
```

```
##  [1] -0.6264538  0.1836433 -0.8356286  1.5952808  0.3295078 -0.8204684
##  [7]  0.4874291  0.7383247  0.5757814 -0.3053884
```

```r
set.seed(1)
rnorm(sd = 1, n = 10, mean = 0)
```

```
##  [1] -0.6264538  0.1836433 -0.8356286  1.5952808  0.3295078 -0.8204684
##  [7]  0.4874291  0.7383247  0.5757814 -0.3053884
```

# Working through Errors



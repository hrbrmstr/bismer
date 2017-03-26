
`bismer` : Generate Shakespearean insults

The following functions are implemented:

-   `insult`: Generate a Shakespearean insult

### Installation

``` r
devtools::install_github("hrbrmstr/bismer")
```

### Usage

``` r
library(bismer)

# current verison
packageVersion("bismer")
```

    ## [1] '0.1.0'

``` r
purrr::walk(1:10, ~print(insult()))
```

    ## [1] "venomed beetle-headed death-token"
    ## [1] "impertinent clapper-clawed mumble-news"
    ## [1] "lumpish tardy-gaited hugger-mugger"
    ## [1] "mangled fool-born whey-face"
    ## [1] "beslubbering reeling-ripe ratsbane"
    ## [1] "mangled tickle-brained foot-licker"
    ## [1] "puking dismal-dreaning strumpet"
    ## [1] "dankish half-faced pumpion"
    ## [1] "puny pox-marked clotpole"
    ## [1] "yeasty dismal-dreaning vassal"

### Test Results

``` r
library(bismer)
library(testthat)

date()
```

    ## [1] "Sat Mar 25 22:17:57 2017"

``` r
test_dir("tests/")
```

    ## testthat results ========================================================================================================
    ## OK: 0 SKIPPED: 0 FAILED: 0
    ## 
    ## DONE ===================================================================================================================

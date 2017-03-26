
`bismer` : Generate Shakespearean insults

Inspired by Dr. Vicky Forster (<a href="https://twitter.com/vickyyyf">@vickyyyf</a>) : <https://twitter.com/vickyyyf/status/846028898152431618>

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

    ## [1] '0.1.1'

``` r
purrr::walk(1:10, ~print(insult()))
```

    ## [1] "thou infectious beef-witted ooxoomb"
    ## [1] "thou puking tardy-gaited lewdster"
    ## [1] "thou qualling guts-griping foot-licker"
    ## [1] "thou venomed doghearted vassal"
    ## [1] "thou churlish ill-breeding foot-licker"
    ## [1] "thou craven clay-brained skainsmate"
    ## [1] "thou clouted full-gorged mumble-news"
    ## [1] "thou paunchy doghearted mammet"
    ## [1] "thou venomed dizzy-eyed malt-worm"
    ## [1] "thou roguish rough-hewn boar-pig"

``` r
purrr::walk(1:10, ~print(insult(thou=FALSE)))
```

    ## [1] "craven reeling-ripe gudgeon"
    ## [1] "impertinent milk-livered moldwarp"
    ## [1] "paunchy guts-griping moldwarp"
    ## [1] "spleeny guts-griping death-token"
    ## [1] "mangled fly-bitten bum-bailey"
    ## [1] "droning tickle-brained haggard"
    ## [1] "mangled clay-brained pignut"
    ## [1] "frothy pottle-deep horn-beast"
    ## [1] "fawning rump-fed scut"
    ## [1] "reeky hasty-witted haggard"

### Test Results

``` r
library(bismer)
library(testthat)

date()
```

    ## [1] "Sun Mar 26 12:52:57 2017"

``` r
test_dir("tests/")
```

    ## testthat results ========================================================================================================
    ## OK: 0 SKIPPED: 0 FAILED: 0
    ## 
    ## DONE ===================================================================================================================

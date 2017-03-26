
`bismer` : Generate Shakespearean insults

Inspired by Dr. Vicky Forster (<a href="https://twitter.com/vickyyyf">@vickyyyf</a>) : <https://twitter.com/vickyyyf/status/846028898152431618> and requested by Jeff Hollister (<a href="https://twitter.com/jhollist">@jhollist</a>).

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

    ## [1] "thou puny beetle-headed death-token"
    ## [1] "thou errant tickle-brained flap-dragon"
    ## [1] "thou rank ill-breeding whey-face"
    ## [1] "thou spleeny crook-pared pumpion"
    ## [1] "thou errant milk-livered hugger-mugger"
    ## [1] "thou tottering clay-brained haggard"
    ## [1] "thou mewling fat-kidneyed bladder"
    ## [1] "thou impertinent toad-spotted harpy"
    ## [1] "thou droning dread-bolted baggage"
    ## [1] "thou wayward unchin-snouted pumpion"

``` r
purrr::walk(1:10, ~print(insult(thou=FALSE)))
```

    ## [1] "warped knotty-pated giglet"
    ## [1] "warped tickle-brained flap-dragon"
    ## [1] "dissembling beetle-headed giglet"
    ## [1] "surly tardy-gaited miscreant"
    ## [1] "surly dread-bolted pignut"
    ## [1] "puking spur-galled boar-pig"
    ## [1] "fobbing clay-brained mumble-news"
    ## [1] "goatish dismal-dreaning codpiece"
    ## [1] "beslubbering base-court death-token"
    ## [1] "roguish boil-brained maggot-pie"

### Test Results

``` r
library(bismer)
library(testthat)

date()
```

    ## [1] "Sun Mar 26 12:55:05 2017"

``` r
test_dir("tests/")
```

    ## testthat results ========================================================================================================
    ## OK: 0 SKIPPED: 0 FAILED: 0
    ## 
    ## DONE ===================================================================================================================

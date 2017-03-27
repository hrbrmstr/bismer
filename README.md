
`bismer` : Generate Shakespearean insults

Inspired by Dr. Vicky Forster (<a href="https://twitter.com/vickyyyf">@vickyyyf</a>) : <https://twitter.com/vickyyyf/status/846028898152431618> and requested by Jeff Hollister (<a href="https://twitter.com/jhollist">@jhollist</a>).

The following functions are implemented:

-   `insult`: Generate a Shakespearean insult

The `insult()` function is aliased to

-   `gehornian`
-   `híenan`
-   `misgrétan`
-   `scendan`

for those who want to go "all-in" on the Shakespeare thing.

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

    ## [1] "thou errant rude-growing ooxoomb"
    ## [1] "thou qualling fly-bitten miscreant"
    ## [1] "thou saucy flap-mouthed bum-bailey"
    ## [1] "thou reeky rude-growing puttock"
    ## [1] "thou lumpish common-kissing clotpole"
    ## [1] "thou paunchy weather-bitten strumpet"
    ## [1] "thou weedy common-kissing puttock"
    ## [1] "thou weedy full-gorged hedge-pig"
    ## [1] "thou puking pottle-deep joithead"
    ## [1] "thou gorbellied clapper-clawed dewberry"

``` r
purrr::walk(1:10, ~print(insult(thou=FALSE)))
```

    ## [1] "bawdy dismal-dreaning pignut"
    ## [1] "reeky unchin-snouted pumpion"
    ## [1] "currish doghearted lewdster"
    ## [1] "clouted bat-fouling minnow"
    ## [1] "lumpish hasty-witted gudgeon"
    ## [1] "qualling full-gorged harpy"
    ## [1] "surly common-kissing foot-licker"
    ## [1] "loggerheaded pottle-deep fustilarian"
    ## [1] "spongy hedge-born scut"
    ## [1] "spleeny beef-witted bum-bailey"

``` r
purrr::walk(1:10, ~print(insult(sentence=TRUE)))
```

    ## [1] "Thou art a cockered flap-mouthed varlot!"
    ## [1] "Thou art a roguish common-kissing wagtail!"
    ## [1] "Thou art a venomed dizzy-eyed ooxoomb!"
    ## [1] "Thou art a currish ill-breeding skainsmate!"
    ## [1] "Thou art a vain unchin-snouted hugger-mugger!"
    ## [1] "Thou art a vain milk-livered gudgeon!"
    ## [1] "Thou art a jarring ill-nurtured harpy!"
    ## [1] "Thou art a craven ill-breeding harpy!"
    ## [1] "Thou art a bawdy spur-galled haggard!"
    ## [1] "Thou art a frothy bat-fouling flax-wench!"

``` r
purrr::walk(1:10, ~print(insult(sentence=TRUE, exclaim=FALSE)))
```

    ## [1] "Thou art a venomed milk-livered flap-dragon."
    ## [1] "Thou art a bootless plume-plucked flirt-gill."
    ## [1] "Thou art a roguish hasty-witted canker-blossom."
    ## [1] "Thou art a vain folly-fallen bladder."
    ## [1] "Thou art a roguish bat-fouling death-token."
    ## [1] "Thou art a currish rude-growing pignut."
    ## [1] "Thou art an artless shard-borne giglet."
    ## [1] "Thou art a roguish ill-nurtured ratsbane."
    ## [1] "Thou art a dissembling tardy-gaited flax-wench."
    ## [1] "Thou art a dissembling idle-headed mammet."

structure(list(c1 = c("artless", "bawdy", "beslubbering", "bootless",
"churlish", "cockered", "clouted", "craven", "currish", "dankish",
"dissembling", "droning", "errant", "fawning", "fobbing", "froward",
"frothy", "gleeking", "goatish", "gorbellied", "impertinent",
"infectious", "jarring", "loggerheaded", "lumpish", "mannering",
"mangled", "mewling", "paunchy", "pribbling", "puking", "puny",
"qualling", "rank", "reeky", "roguish", "ruttish", "saucy", "spleeny",
"spongy", "surly", "tottering", "unmuzzled", "vain", "venomed",
"villainous", "warped", "wayward", "weedy", "yeasty"), c2 = c("base-court",
"bat-fouling", "beef-witted", "beetle-headed", "boil-brained",
"clapper-clawed", "clay-brained", "common-kissing", "crook-pared",
"dismal-dreaning", "dizzy-eyed", "doghearted", "dread-bolted",
"earth-vexing", "elf-skinned", "fat-kidneyed", "fen-sucked",
"flap-mouthed", "fly-bitten", "folly-fallen", "fool-born", "full-gorged",
"guts-griping", "half-faced", "hasty-witted", "hedge-born", "hell-hated",
"idle-headed", "ill-breeding", "ill-nurtured", "knotty-pated",
"milk-livered", "motley-minded", "onion-eyed", "plume-plucked",
"pottle-deep", "pox-marked", "reeling-ripe", "rough-hewn", "rude-growing",
"rump-fed", "shard-borne", "sheep-biting", "spur-galled", "swag-bellied",
"tardy-gaited", "tickle-brained", "toad-spotted", "unchin-snouted",
"weather-bitten"), c3 = c("apple-john", "baggage", "barnacle",
"bladder", "boar-pig", "bugbear", "bum-bailey", "canker-blossom",
"clack-dish", "clotpole", "ooxoomb", "codpiece", "death-token",
"dewberry", "flap-dragon", "flax-wench", "flirt-gill", "foot-licker",
"fustilarian", "giglet", "gudgeon", "haggard", "harpy", "hedge-pig",
"horn-beast", "hugger-mugger", "joithead", "lewdster", "lout",
"maggot-pie", "malt-worm", "mammet", "measle", "minnow", "miscreant",
"moldwarp", "mumble-news", "nut-hook", "pigeon-egg", "pignut",
"puttock", "pumpion", "ratsbane", "scut", "skainsmate", "strumpet",
"varlot", "vassal", "whey-face", "wagtail")), class = c("tbl_df",
"tbl", "data.frame"), row.names = c(NA, -50L), .Names = c("c1",
"c2", "c3")) -> insults

#' Generate a random Shakespearean insult
#'
#' With this function thee can gen'rate a plain three-element æfþanc, one prefix'd with
#' "thou", and completeth fracoþ sentences with varying punctuation.
#'
#' @md
#' @param thou if `TRUE` then the insults are prefixed with "thou"
#' @param sentence if `TRUE` then the insults are prefixed with "Thou art a" and end with
#'        punctuation. See `exclaim` for how to specify which punctuation. The value of
#'        `sentence` overrides `thou`.
#' @param exclaim if `TRUE` and `sentence` == `TRUE` then the generated sentence will be
#'        ended with a "!" else it shall be ended with a ".". This parameter is ignored
#'        if `sentence` is `FALSE`.
#' @export
insult <- function(thou=TRUE, sentence=FALSE, exclaim=TRUE) {

  prefix <- ""

  beration <- sprintf("%s %s %s",
                      insults$c1[sample(length(insults$c1), 1)],
                      insults$c2[sample(length(insults$c2), 1)],
                      insults$c3[sample(length(insults$c3), 1)])

  if (thou || sentence) prefix <- if (sentence) "Thou art a " else "thou "

  if (sentence) {
    is_vowel <- substr(beration, 1, 1) %in% c("a", "e", "i", "o", "u")
    if (is_vowel) prefix <-  gsub("a $", "an ", prefix)
    beration <- sprintf("%s%s", beration, if (exclaim) "!" else ".")
  }

  sprintf("%s%s", prefix, beration)

}

#' @rdname insult
#' @export
gehornian <- insult


#' @rdname insult
#' @export
híenan <- insult

#' @rdname insult
#' @export
misgrétan <- insult

#' @rdname insult
#' @export
scendan <- insult
context("localize()")

test_that(
  "Localize document"
  , {
    lang <- papaja:::localize("english")

    expect_is(lang, "list")
    expect_equal(length(lang), 9)
    expect_equal(names(lang), c("author_note", "abstract", "keywords", "word_count", "table", "figure", "note", "correspondence", "email"))
    expect_equivalent(sapply(lang, class), rep("character", 9))
  }
)

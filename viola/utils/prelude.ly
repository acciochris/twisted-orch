\paper {
  #(set-paper-size "letter")
}

mBreak = { \break }

global = {
  \override MultiMeasureRest.expand-limit = 1
  \numericTimeSignature
}

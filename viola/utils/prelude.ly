\paper {
  #(set-paper-size "letter")
}

mBreak = { }

global = {
  \override MultiMeasureRest.expand-limit = 1
  \numericTimeSignature
  \set Score.startRepeatBarType = #"[|:"
  \set Score.endRepeatBarType = #":|]"
  \accidentalStyle modern-cautionary
}

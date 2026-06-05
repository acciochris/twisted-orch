\version "2.26.0"

\paper {
  #(set-paper-size "letter")
}

mBreak = { \break }

global = {
  \override MultiMeasureRest.expand-limit = 1
  \numericTimeSignature
}

\include "01_prologue.ly"

\book {
  \bookpart {
    \score {
      \header {
        piece = \markup \fontsize #5 "Prologue"
        opus = \markup \fontsize #8 \box "01"
      }
      \new Staff \with {
        midiInstrument = "viola"
      } \prologue
      \layout {
        indent = 0
        \context {
          \Score
          \override SpacingSpanner.common-shortest-duration =
          #(ly:make-moment 1/8)
          \override SpacingSpanner.spacing-increment = 2.6
        }
      }
      \midi { }
    }
  }
  \bookpart {
    \score {
      \header {
        piece = \markup \fontsize #5 "Prologue"
        opus = \markup \fontsize #8 \box "01"
      }
      \new Staff \with {
        midiInstrument = "viola"
      } \prologue
      \layout {
        indent = 0
        \context {
          \Score
          \override SpacingSpanner.common-shortest-duration =
          #(ly:make-moment 1/8)
          \override SpacingSpanner.spacing-increment = 2.6
        }
      }
      \midi { }
    }
  }
}

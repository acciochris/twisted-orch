\bookpart {
  \score {
    \header {
      piece = \markup \fontsize #5 \piecename
      opus = \markup \fontsize #8 \box \piecenumber
    }
    \new Staff \with {
      midiInstrument = "viola"
    } \piecenotes
    \layout {
      indent = 0
      \context {
        \Score
        \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/8)
        \override SpacingSpanner.spacing-increment = 2.6
      }
    }
    \midi { }
  }
}
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
  \header {
    title = "Twisted"
    subtitle = "The Untold Story of a Royal Vizier"
    instrument = "Violin"
    composer = "A.J. Holmes"

  }
  \score {
    \header {
      piece = \markup \fontsize #5 "Prologue"
      opus = \markup \fontsize #8 \box "01"
    }
    \new Staff \with {
      midiInstrument = "violin"
    } \prologue
    \layout {
      indent = 0
    }
    \midi { }
  }
  \pageBreak
  \score {
    \header {
      piece = \markup \fontsize #5 "Prologue"
      opus = \markup \fontsize #8 \box "01"
    }
    \new Staff \with {
      midiInstrument = "violin"
    } \prologue
    \layout {
      indent = 0
    }
    \midi { }
  }
}
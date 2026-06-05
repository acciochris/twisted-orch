\paper {
  #(set-paper-size "letter")
}

mBreak = { \break }

global = {
  \override MultiMeasureRest.expand-limit = 1
  \numericTimeSignature
}

dfisEight = {
  \chordmode {
    d8:3\staccato d:3\staccato d:3\staccato d:3\staccato d:3\staccato d:3\staccato d:3\staccato d:3\staccato
  }
}

dreamALittleHarder = \relative c'' {
  \global
  \key d \major
  \time 4/4
  \tempo "Whimsical" 4=105
  d'1:32~ d:~ d:~ d: \mBreak
  d,8( g) g( d) d( g) g( d)
  d( fis) g( fis) d( fis) g( fis)
  d( g) g( d) d( g) g( d)
  d'1\fermata \mBreak
  \textMark "Vocals Start" \compressEmptyMeasures R1*3 \mBreak
  a8(\mp g fis d) a(g fis d) g1 \bar "||"
  e8( fis g fis a d, e fis)
  a(\mf d e a, d e4.) \mBreak
  fis,8(\mp g g a d a4.)
  d8\mf e e fis fis d4.
  <<b,2\< d>> <<a4.( d>> g8)
  \tempo "Epic, Dictated" <<c,4\f a'-->> <<d, b'-->> <<e,2 cis'\fermata-->> \bar "||" \mBreak
  \tempo "with bounce" 4=145
  \fixed e' {
    r8\f e( d-.) r r e'( d'-.) r
    r e'( d'-.) r a'4-. a-. \bar "||"
  }
  \chordmode {
    r8 d:3\staccato d:3\staccato d:3\staccato d:3\staccato d:3\staccato d:3\staccato d:3\staccato
  }
  \dfisEight \mBreak
  \dfisEight \dfisEight \dfisEight
  \relative d' {
    <<d-. fis>> <<d-. fis>> <<d-. fis>> <<d-. fis>> fis'8.-- g16( a8-.) a,-. \bar "||" \mBreak
    d,->\p <<d-. fis>> <<d-. fis>> <<d-. fis>> <<d-. fis>> <<d-. fis>> <<d-. fis>> <<d-. fis>>
  }
  \dfisEight \dfisEight \dfisEight \mBreak
  \dfisEight
  \relative d' {
    r8 <<d-. fis>> <<d-. fis>> <<d-. fis>> <<d-. fis>> <<d-. fis>> <<d-. fis>> r
  }
  
}

  \score {
    \header {
      piece = \markup \fontsize #5 "Dream a Little Harder"
      opus = \markup \fontsize #8 \box "01"
    }
    \new Staff \with {
      midiInstrument = "violin"
    } \dreamALittleHarder
    \layout {
      indent = 0
    }
    \midi { }
  }

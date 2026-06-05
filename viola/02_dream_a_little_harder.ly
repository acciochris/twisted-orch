\version "2.26.0"

\paper {
  #(set-paper-size "letter")
}

mBreak = { \break }

global = {
  \override MultiMeasureRest.expand-limit = 1
  \numericTimeSignature
  \set Score.startRepeatBarType = #"[|:"
  \set Score.endRepeatBarType = #":|]"
  \accidentalStyle modern-cautionary
}

dfisEight = {
  \chordmode {
    d8:3\staccato d:3\staccato d:3\staccato d:3\staccato d:3\staccato d:3\staccato d:3\staccato d:3\staccato
  }
}

dreamALittleHarder = \relative c' {
  \global
  \clef alto
  \key d \major
  \time 4/4
  \tempo "Whimsical" 4=105
  \compressEmptyMeasures R1*4 \mBreak
  R1*4 \mBreak
  % d8(\mp g) g( d) d( g) g( d)
  % d( fis) g( fis) d( fis) g( fis)
  % d( g) g( d) d( g) g( d)
  % a'1\fermata \mBreak
  \textMark "Vocals Start" \compressEmptyMeasures R1*3 \mBreak
  a8(\mp g fis a) a(g fis d) g1 \bar "||"
  e8( fis g fis a d, e fis)
  e( fis a e fis a4.) \mBreak
  fis8( g g a d a4.)
  fis8\< g g a d a4.
  <<b,2 d>> <<a4.( d>> g8)
  \tempo "Epic, Dictated" <<c,4\f a'-->> <<d, b'-->> <<e,2 cis'\fermata-->> \bar "||" \mBreak
  \tempo "with bounce" 4=145
  \fixed b {
    r8\f b( a-.) r r b( a-.) r
    r b'( a'-.) r a'4-. a-. \bar "||"
  }
  \chordmode {
    r8 d:3\staccato\p d:3\staccato_\markup\italic"lightly, with bounce" d:3\staccato d:3\staccato d:3\staccato d:3\staccato d:3\staccato
  }
  \dfisEight \mBreak
  \dfisEight \dfisEight \dfisEight
  \relative d' {
    <<d-. fis>> <<d-. fis>> <<d-. fis>> <<d-. fis>> fis8.-- g16( a8-.) a,-. \bar "||" \mBreak
    d-> <<d-. fis\p>> <<d-. fis>> <<d-. fis>> <<d-. fis>> <<d-. fis>> <<d-. fis>> <<d-. fis>>
  }
  \dfisEight \dfisEight \dfisEight \mBreak
  \dfisEight
  \relative d' {
    r8 <<d-. fis>> <<d-. fis>> <<d-. fis>> <<d-. fis>> <<d-. fis>> <<d-. fis>> r
  }

  \fixed g {
    <<g fis'-^>> r <<g fis'-^>> r <<g fis'-^>> r <<g fis'-^>> r
    \repeat volta 2 { <<g fis'-^>> r <<g fis'-^>> r <<g fis'-^>> r <<g fis'-^>> r }
    \textEndMark "\"...the baguettes!\"" \mBreak
  }

  \tempo "Get Pissed Y'all"
  \fixed d' {
    \mf <<d a-^>> r <<d a-^>> r <<d a-^>> r <<d a-^>> r
    <<d a-^>> r <<d a-^>> r <<d a-^>> r <<d a-^>> r
    <<d bes-^>> r <<d bes-^>> r <<d bes-^>> r <<d bes-^>> r
    <<d bes-^>> r <<d bes-^>> r <<d bes-^>> r <<d bes-^>> r \mBreak
    <<d b-^>> r <<d b-^>> r <<d b-^>> r <<d b-^>> r
    <<d b-^>> r <<d b-^>> r <<d b-^>> r <<d b-^>> r
    <<d c'-^>> r <<d c'-^>> r <<d c'-^>> r <<d c'-^>> r
    <<a, a-^>> r <<a, a-^>> r <<a, a-^>> r <<a, a-^>> r
  } \mBreak

  R1*2
  \relative gis {
    gis8-- gis-- gis-- gis-- gis-- gis-- gis-- gis--
    e-- e-- e-- e-- eis4-- eis--
    b'-- b-- b-- b-- \mBreak
    a8-- a8-- a8-- a8-- a'2--
    d,4-.-^ r4 r2
    \acciaccatura eis8 fis-> eis fis \acciaccatura gis a-> gis fis \acciaccatura dis eis-> d
    cis-> cis-> cis-> cis-> cis4-.-^ r \bar "||" \mBreak
    \tempo "Quasi rubato" 4=120 b2_\markup { \italic "sub." \dynamic mp ", dolce" } a b a
    \time 3/2 e'4~ e fis( d) cis( a) \time 4/4 cis8( b cis b) cis( b e d) \mBreak
    \time 6/4 d2 fis a \time 4/4 a4\fermata r4 \tempo "Tempo 1" 4=132 r2 \bar "||" \mBreak
    g8-- r r g( fis) r r fis(
    e) r r e( fis) r r fis(
    g) r r g( d) r r d(
    c) r r b( a) r r4 \mBreak
    d2 e
    \time 2/4 fis
    \time 4/4 R1*3
    r2 g,8( a4.) \mBreak
    d,4-. r r r8 d16( e fis4. e8 d4.) cis8(
    e2~ e4~ e8) d16( e
    fis4. e8 d4.) e8( \mBreak
    f2.~ f8) f16( g
    a4. g8 f4.) e8(
    g c,4.~ c) f16( g
    a4. g8 f4. g8 \bar "||" \mBreak
    a2..) r8
    R1*7
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
    \context {
      \Score
      \override SpacingSpanner.common-shortest-duration =
      #(ly:make-moment 1/8)
      \override SpacingSpanner.spacing-increment = 2.6
    }
  }
  \midi { }
}

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
    <<d\mf a-^>> r <<d a-^>> r <<d a-^>> r <<d a-^>> r
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
    r2 r4 r8 a8
    b4 a b cis,
    d8-.\mf d-. d-. d-. d-. d-. d-. d-.
    d-. d-. d-. d-. d-. d-. d-. d-.
    \repeat unfold 4 { d-. d-. d-. d-. d-. d-. d-. d-. } \mBreak
    d-.\mp d-. d-. d-. d-.\> d-. d-. d-.
    \time 6/4 a'4 b cis2\fermata r2\fermata
    \time 4/4 r4 a-^\f r a-^
    r8 a-.-> a-.-> a-.-> a-.-> a-.-> a4 \mBreak
    R1*3 \mBreak
    r2 r4 r8 e
    fis eis fis a gis fis eis d
    cis2 r4 a'4
    gis a b a \mBreak
    gis a cis4. a8
    gis4 a b a
    gis a e'4. cis 8
    cis8. b16 a8 cis d cis b a \mBreak
    d1\trill\<
    d8->\f r8 r4 r2 \bar "||"
    g,8->\mp r r fis-> r r d-> r
    e r r fis r4 fis8 r \mBreak
    g r r fis r r d r
    c'2-- a--
    b-- cis--
    \time 2/4 d8 r8 r4
    \time 4/4 a1 \mBreak
    R1*5 \mBreak
    r8\f b( a-.) r r b( a-.) r
    \repeat unfold 2 { r8 b( a-.) r }
    \repeat unfold 2 { r8 b'( a-.) r } \mBreak
    gis4\< fis e d \bar "||"
    b1--_\markup {\italic "sub." \dynamic mp}\!
    a--
    b--
    a--
    b--
    e,-- \mBreak
    d2-- d--
    d-- d--
    g-- e--
    a-- fis-- \mBreak
    R1*6 \mBreak
    \tempo "Pull Back" cis'8 d d a cis d d a
    d e e a, d e e a,
    d8 e4. d8 e4.
    \tempo "rit." a,8\< b b4-- cis8 d d4
    \time 3/2 \tempo "Quasi Colla Voce" f1 a2 \mBreak
    \time 4/4 \tempo "a tempo" R1*2 \bar "||"
    R1*4 \mBreak
    d,8\p \repeat unfold 15 d \bar "||"
    a(\mf b) b( a) a( cis) cis( a) a( cis)\< cis( a) a( d)d( a) \mBreak
    d4\f b8 cis d cis b b
    d2~\< d2\trill
    e2.\trill\ff r4 \bar "||" \mBreak
    b8-. \repeat unfold 15 b-.
    \repeat unfold 16 bes-.
    \repeat unfold 14 a-. b16( cis d e) \mBreak
    fis2--\cresc b,4-- a--
    e'2-- e4-- b--
    \tuplet 3/2 { e--\f e-- e-- } \tuplet 3/2 { e-- e-- e-- }
    d2-- \tempo "rall." d2--
    g-- e-- \bar "||" \mBreak
    \tempo "a tempo" 4=145
    \repeat unfold 2 { d8-.-> d-. d-. d-.-> d-. d-. d-.-> d-. }
    \repeat unfold 16 d-.
    d--\< \repeat unfold 7 d--
    d4-- b-- cis-- b--
    d-- cis-- d-- e--\! \bar "||" \mBreak
  }

  \fixed a {
    \repeat unfold 4 { a8( d') d'( a) }
    d'-. cis'-. b-. a-. g-. fis-. e-. d-.
    cis'-.\ff b-. cis'-. e'-. d'-. r <<d a-.->\fff>> r \textEndMark "attacca" \bar "|."
  }
}

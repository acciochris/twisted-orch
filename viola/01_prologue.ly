prologue = \relative c' {
  \global
  \clef alto
  \key c \major
  \time 4/4
  \tempo "Misterioso" 4=105
  % Music follows here.
  \relative { \partial 8 a16\f a a1\fermata->\> }
  r4\! b'\p a b~ b2..
  \relative { a16\f a a4->}
  b\p a b~ b1 \bar "||" \break

  \compressEmptyMeasures R1*4
  d,1~ d bes'4( a bes d c a bes2\fermata) \bar "||" \break

  \compressEmptyMeasures R1*2
  \textEndMark \markup { "\"...but then came the" \underline "dark times.\"" }
  a,4( d c d e d c b)
  d( b a b c b a g) r c(bes c d c d e
  f e f bes,) R1\fermata \tempo "A hair slower" \compressEmptyMeasures R1*2 
  R1\fermata\bar "|." \tweak direction #DOWN \textEndMark "attacca" 
}

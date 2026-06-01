prologue = \relative c'' {
  \global
  \key c \major
  \time 4/4
  \tempo "Misterioso" 4=105
  % Music follows here.
  \relative { \partial 8 a16\f a a1\fermata->~\> a1\! }
  e1 R g1 \bar "||" \mBreak
  a4(_\markup \italic "less" b a b c b a g) f( b a b c b a g) \mBreak
  d( b' a b c b a g) bes( a bes d c a bes2\fermata) \bar "||" \mBreak
  \compressEmptyMeasures
  \textMark \markup { "\"...but then came the" \underline "dark times.\"" } R1*2 a,,4( d c d e d c b) \mBreak
  d( b' a b c b a g) r c(bes c d c d e \mBreak
  f e f bes,) R1\fermata \tempo "A hair slower" \compressEmptyMeasures R1*2 
  R1\fermata\bar "|." \tweak direction #DOWN \textEndMark "attacca" 
}

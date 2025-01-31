\version "2.24.2"  

melodic_melody = \relative c' {
  \tempo 4 = 120
  \key e \major
  \time 6/8
  \repeat volta 16 {
    e8 g b e' d b
    c a f d' c a
    e g b e' d b
    c a f d' c a
  }
}

romantic_melody = \relative c' {
  \tempo 4 = 80
  \key a \major
  \time 4/4
  \repeat volta 16 {
    a4 c' b a
    f2 g
    a4 c' b a
    g2 e
  }
}

hymn_melody = \relative c' {
  \tempo 4 = 100
  \key d \major
  \time 4/4
  \repeat volta 16 {
    d4 g a d
    f e d b
    d g a d
    f e d b
  }
}

melodic_harmony = \chordmode {
  e2:maj b:maj c:maj a:min
}

romantic_harmony = \chordmode {
  a2:maj f#:min d:maj e:maj
}

hymn_harmony = \chordmode {
  d2:maj g:maj a:maj d:maj
}

\score {
  \unfoldRepeats
  <<
    \new Staff \melodic_melody
    \new ChordNames \melodic_harmony
  >>
  \layout {}
  \midi {}
}

\score {
  \unfoldRepeats
  <<
    \new Staff \romantic_melody
    \new ChordNames \romantic_harmony
  >>
  \layout {}
  \midi {}
}

\score {
  \unfoldRepeats
  <<
    \new Staff \hymn_melody
    \new ChordNames \hymn_harmony
  >>
  \layout {}
  \midi {}
}

\book {
  \bookOutputName "pad-jams"
}

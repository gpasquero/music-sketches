\version "2.24.2"  % Asegurar compatibilidad con la versión

melody = \relative c' {
  \tempo 4 = 140
  \key c \minor
  \time 4/4
  \repeat volta 16 {
    <c g'>8->( <d a'>) <f c'> <g d'>
    <c g'>->( <d a'>) <f c'> <g d'>
    <c g'>->( <d a'>) <f c'> <g d'>
    <c g'>->( <d a'>) <f c'> <g d'>
  }
}

bass = \relative c {
  \clef bass
  \repeat volta 16 {
    c8->( d) f g
    c->( d) f g
    c->( d) f g
    c->( d) f g
  }
}

harmony = \chordmode {
  c1:min g:min f:min g:min
}

percussion = \drummode {
  \repeat volta 16 {
    bd4 bd4 bd4 bd4
    sn8 r sn r sn r sn r
    hh8 hh hh hh hh hh hh hh
  }
}

\score {
  \unfoldRepeats
  <<
    \new Staff \melody
    \new Staff \bass
    \new ChordNames \harmony
    \new DrumStaff \percussion
  >>
  \layout {}
  \midi {}
}

\book {
  \bookOutputName "acid_house"
}

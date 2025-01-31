\version "2.24.2"  
\relative c' {
  \tempo 4 = 125
  \key a \minor
  \time 4/4

  % ---- BEAT PRINCIPAL ----
  \new DrumStaff {
    \drummode {
      bd4 r4 bd4 r4 | bd4 r4 bd4 r4  % Bombo en negras
      hh8 r8 hh8 r8 | hh8 r8 hh8 r8  % Hi-hat
      r2 sn4 r4 | r2 sn4 r4  % Clap en 2 y 4
    }
  }

  % ---- PROGRESIÓN ARMÓNICA ----
  \new ChordNames {
    \set chordChanges = ##t
    a1:m | f1:maj7 | c1 | g1
  }

  % ---- PUENTE ----
  \new ChordNames {
    a1:m9 | f1:maj7 | e1:m7 | d1:m9
  }

  % ---- BAJO ----
  \new Staff {
    \clef bass
    c,2 g, | a,2 e, |
  }
}

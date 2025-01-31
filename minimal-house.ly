\version "2.24.4"  
\relative c' {
  \tempo 4 = 125
  \key a \minor
  \time 4/4

  % ---- BEAT PRINCIPAL ----
  \new DrumStaff {
    \drummode {
      bd4 r4 bd4 r4    % Bombo en negras
      hh8 r8 hh8 r8 hh8 r8 hh8 r8   % Hi-hat en corcheas
      r4 sn4 r4 sn4    % Clap en 2 y 4
    }
  }

  % ---- PROGRESIÓN ARMÓNICA ----
  \new ChordNames {
    \chordmode {
      a1:m | f1:maj7 | c1 | g1
    }
  }

  % ---- PUENTE ----
  \new ChordNames {
    \chordmode {
      a1:m9 | f1:maj7 | e1:m7 | d1:m9
    }
  }

  % ---- BAJO ----
  \new Staff {
    \clef bass
    \relative c {
      c2 g | a2 e
    }
  }
}



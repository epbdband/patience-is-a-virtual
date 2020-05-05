\gridPutMusic "guitar" 5 \relative c {
  \repeat volta 2 {
    \include "notes/guitar-I.ily"
  }
}

\gridPutMusic "guitar" 1 \relative c {
  \set Staff.instrumentName = "EB"
  \Key
  \gridGetCellMusic "guitar" 5
}

\gridPutMusic "guitar" 2 \relative c {
  \repeat volta 2 {
    \repeat volta 2 {
      \include "notes/guitar-IIa.ily"
    }
    \alternative {
      { \include "notes/guitar-IIb.ily" }
      { \include "notes/guitar-IIc.ily"
        \include "notes/guitar-IId.ily" }
    }
  }
}

\gridPutMusic "guitar" 3 \relative c {
  \repeat volta 3 {
    <c' es aes>4:8 q-^ <cis e a>-^ <b d g>-^ |
  }
  \alternative {
    { <c es aes>4:8 q:8 <b d g>-^ <cis e a>-^  | }
    { <c es aes>4-^ r r2 | }
    { <c es aes>4:8\(<b d g>:8 <bes des ges>:8  <cis e a>:8\) | }
  }
  <c es aes>4:8 q-^ <b d g>-^ <cis e a>-^ |
  <c es aes>4-^ r r2 |
}

\gridPutMusic "guitar" 4 \relative c {
  \gridGetCellMusic "guitar" 2
}

\gridPutMusic "guitar" 6 \relative c {
  \repeat volta 4 {
    <c' es aes>8 q q r <cis e a> r <b d g> r |
  }
  \alternative {
    { <c es aes>8 q q q <b d g> r <cis e a> r  | }
    { <c es aes>8 r r4 r2 | }
    { <c es aes>8 q <b d g> q <bes des ges> q <cis e a> q | }
    { <c es aes>8 r r4 r2 | }
  }
}

\gridPutMusic "guitar" 7 \relative c {
  \repeat unfold 2 {
    \repeat unfold 2 {
      \include "notes/guitar-IIa.ily"
    }
    \alternative {
      { \include "notes/guitar-IIb.ily" }
      { \include "notes/guitar-IIc.ily"
        \include "notes/guitar-IId.ily" }
    }
  }
}

\gridPutMusic "guitar" 8 \relative c {
  \unfoldRepeats \include "notes/guitar-I.ily"
  R1
}

\gridPutMusic "guitar" 9 \relative c {
  R1
}

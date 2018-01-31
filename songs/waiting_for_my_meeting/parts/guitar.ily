\gridPutMusic "guitar" 5 \relative c {
  \repeat volta 6 {
    <aes es' aes c>8 q q q q q q q |
    <aes es' aes c>8 q r4
  }
  \alternative {
    { <a'' cis>8 r q r }
    { <c ees>8 r r4 }
    { <a cis>8 r <g b> r
      <aes,, es' aes c>8 q q q q q q r |
      R1 | }
  }
}

\gridPutMusic "guitar" 1 \relative c {
  \set Staff.instrumentName = "EB"
  \Key
  \gridGetCellMusic "guitar" 5
}

\gridPutMusic "guitar" 2 \relative c {
  \repeat volta 6 {
    <aes es' aes c>8 q q q q r
  }
  \alternative {
    { <c g' c e>8 r |
      <des aes' des f>8 q q r <a e' a cis> q q r | }
    { <c g' c e>8 q |
      <des aes' des f>8 q <bes f' bes d> q <ces ges' ces es> q <es bes' es g> q | }
    { <c g' c e>8 r |
      <des aes' des f>8 q q r <a e' a cis> q q r |
      <aes es' aes c>8 q q r q q q r |
      <aes es' aes c>8 r r4 r2 |
    }
  }
}

\gridPutMusic "guitar" 3 \relative c {
  \repeat volta 3 {
    <c' es aes>8 q q r <cis e a> r <b d g> r |
  }
  \alternative {
    { <c es aes>8 q q q <b d g> r <cis e a> r  | }
    { <c es aes>8 r r4 r2 | }
    { <c es aes>8\( q <b d g> q <bes des ges> q <cis e a> q\) |
      <c es aes>8 q q r <b d g> r <cis e a> r |
      <c es aes>8 r r4 r2 | }
  }
}

\gridPutMusic "guitar" 4 \relative c {
  \repeat volta 2 {
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
  \repeat volta 2 {
    \include "notes/guitar-I.ily"
  }
  \alternative {
    { R1 }
    { R1 }
  }
}

\gridPutMusic "guitar" 9 \relative c {
  R1
}

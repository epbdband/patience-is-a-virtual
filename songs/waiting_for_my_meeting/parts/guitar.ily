\gridPutMusic "guitar" 5 \relative c {
  \repeat volta 2 {
    \include "notes/guitar-I.ily"
    R1
  }
}

\gridPutMusic "guitar" 1 \relative c {
  \set Staff.instrumentName = "EB"
  \Key
  \repeat unfold 2 {
    \include "notes/guitar-I.ily"
    R1
  }
}

\gridPutMusic "guitar" 2 \relative c {
  \repeat volta 2 {
    \repeat unfold 2 {
      \include "notes/guitar-IIa.ily"
    }
    \include "notes/guitar-IIb.ily"
    \include "notes/guitar-IIc.ily"
  }
  \alternative {
    { \include "notes/guitar-IId.ily" }
    { \include "notes/guitar-IId.ily" }
  }
}

\gridPutMusic "guitar" 3 \relative c {
  \include "notes/guitar-IIIa.ily"
  \include "notes/guitar-IIIb.ily"
}

\gridPutMusic "guitar" 4 \relative c {
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

\gridPutMusic "guitar" 6 \relative c {
  \include "notes/guitar-IIIa.ily"
  \include "notes/guitar-IIIc.ily"
}

\gridPutMusic "guitar" 7 \relative c {
  \gridGetCellMusic "guitar" 4
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

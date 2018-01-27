\gridPutMusic "guitar" 1 \relative c {
  \set Staff.instrumentName = "EB"
  \Key
  \repeat unfold 2 {
    \include "notes/guitar-I.ily"
  }
}

\gridPutMusic "guitar" 2 \relative c {
  \repeat unfold 2 {
    \include "notes/guitar-II.ily"
  }
}

\gridPutMusic "guitar" 3 \relative c {
  \include "notes/guitar-IIIa.ily"
  \include "notes/guitar-IIIb.ily"
}

\gridPutMusic "guitar" 4 \relative c {
  \gridGetCellMusic "guitar" 2
}

\gridPutMusic "guitar" 5 \relative c {
  \repeat unfold 2 {
    \include "notes/guitar-I.ily"
  }
}

\gridPutMusic "guitar" 6 \relative c {
  \include "notes/guitar-IIIa.ily"
  \include "notes/guitar-IIIc.ily"
}

\gridPutMusic "guitar" 7 \relative c {
  \gridGetCellMusic "guitar" 2
}

\gridPutMusic "guitar" 8 \relative c {
  \gridGetCellMusic "guitar" 5
}

\gridPutMusic "guitar" 9 \relative c {
    R1
}

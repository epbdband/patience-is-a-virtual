\gridPutMusic "meta" 5 {
  s1*6
  \bar ":|."
}

\gridPutMusic "meta" 1 {
  \global
  \gridGetCellMusic "meta" 5
  \break
}

\gridPutMusic "meta" 2 {
  s1*6 \break
}

\gridPutMusic "meta" 3 {
  \repeat volta 3 {
    s1 |
  }
  \alternative {
    { s1 | }
    { s1 | }
    { s1 | }
  }
  s1*2
  \bar "||"
  \pageBreak
}

\gridPutMusic "meta" 4 {
  s1*6 \break
  \mark 5
}

\gridPutMusic "meta" 6 {
  \pageBreak
  \mark 6
  s1*5
  \break
}

\gridPutMusic "meta" 7 {
  \mark 7
  s1*8 \break
  s1*8 \break
}

\gridPutMusic "meta" 8 {
  \mark 8
  \repeat volta 2 {
    s1*7
  }
  \alternative {
    { s1 }
    { s1 }
  }
  \break
}

\gridPutMusic "meta" 9 {
  \mark 9
  s1
  \bar "|."
}

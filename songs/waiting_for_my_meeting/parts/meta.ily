\gridPutMusic "meta" 5 {
  \set Score.repeatCommands = #'(start-repeat)
  s1 |
  \set Timing.measureLength = #(ly:make-moment 2/4)
  s2
  \set Score.repeatCommands = #'((volta "1, 4"))
  s2 |
  \set Score.repeatCommands = #'((volta "2, 5"))
  s2 |
  \set Score.repeatCommands = #'((volta #f) (volta "3, 6") end-repeat)
  s2 |
  \set Timing.measureLength = #(ly:make-moment 4/4)
  s1*2
  \bar ":|."
}

\gridPutMusic "meta" 1 {
  \global
  \gridGetCellMusic "meta" 5
  \break
}

\gridPutMusic "meta" 2 {
  \partial 2.
  \set Score.repeatCommands = #'(start-repeat)
  s2. |
  \set Score.repeatCommands = #'((volta "1, 4"))
  \set Timing.measureLength = #(ly:make-moment 1/4)
  s4 |
  \set Timing.measureLength = #(ly:make-moment 4/4)
  s1 |
  \set Score.repeatCommands = #'((volta "2, 5"))
  \set Timing.measureLength = #(ly:make-moment 1/4)
  s4 |
  \set Timing.measureLength = #(ly:make-moment 4/4)
  s1 |
  \set Score.repeatCommands = #'((volta #f) (volta "3, 6") end-repeat)
  \set Timing.measureLength = #(ly:make-moment 1/4)
  s4 |
  \set Timing.measureLength = #(ly:make-moment 4/4)
  s1*3 |
  \bar ":|."
  \break
}

\gridPutMusic "meta" 3 {
  \repeat volta 3 {
    s1 |
  }
  \alternative {
    { s1 | }
    { s1 | }
    { s1*3 | }
  }
  \bar "||"
  \pageBreak
}

\gridPutMusic "meta" 4 {
  s1*8 \break
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

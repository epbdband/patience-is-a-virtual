%%% ================================================================ [ vox.ily ]

\gridPutMusic "vox" 1
\with {
  lyrics = { }
  music = {
    \stopStaff \override Staff.StaffSymbol.line-count = #1 \startStaff
    \new Voice = "intro" \relative {
      \improvisationOn
      \repeat volta 6 {
        R1 |
        r2
      }
      \alternative {
        { r2 | }
        { r2 | }
        { r2 |
          R1 |
          r4 r8 d8^\markup \tiny "(last time only)" d4 d | }
      }
    }
  }
}

%%% ============================================================ [ Verse Music ]

\gridPutMusic "vox" 2
\with {
  lyrics = \lyricmode { }
  music = {
    \new Voice = "verseOne" \relative {
      \improvisationOn
      \set melismaBusyProperties = #'()
      \slurDashed
      \phrasingSlurDotted
      \partial 2.
      \repeat volta 6 {
        \parenthesize d8( d) \parenthesize d4 r4
      }
      \alternative {
        { \set Timing.measureLength = #(ly:make-moment 1/4)
          r4 |
          \set Timing.measureLength = #(ly:make-moment 4/4)
          R1 | }
        { \set Timing.measureLength = #(ly:make-moment 1/4)
          d8 d( |
          \set Timing.measureLength = #(ly:make-moment 4/4)
          d4) d4( d8 d) d4 | }
        { \set Timing.measureLength = #(ly:make-moment 1/4)
          r4 |
          \set Timing.measureLength = #(ly:make-moment 4/4)
          R1 |
          R1 |
          \parenthesize { d8 d d d } d d4 d8 | }
      }
    }
  }
}

\gridPutMusic "vox" 3
\with {
  lyrics = { }
  music = {
    \new Voice = "waitingOne" \relative {
      \improvisationOn
      \repeat volta 3 {
        d8 d d d d d r4 |
      }
      \alternative {
        { d8 d d d d d r4 | }
        { d8 d d d d d r4 | }
        { \repeat unfold 3 {
            d8 d d d d d r4 |
          }
        }
      }
    }
  }
}

\gridPutMusic "vox" 4
\with {
  lyrics = { }
  music = {
    \new Voice = "waitingTwo" \relative {
      \improvisationOn
      d8^\markup \tiny "(first time only)" d d d d d r4 |
      \repeat unfold 7 {
        d8 d d d d d r4 |
      }
    }
  }
}

%%% ==================================================================== [ EOF ]

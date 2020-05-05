%%% ================================================================ [ main.ly ]
%%% Description: Patience is a Virtual - Main score for "Waiting for My Meeting"
%%% Copyright:   (c) 2018 EPBD
%%% License:     see LICENSE
%%% ==================================================================== [ EOH ]

\version "2.19.24"

%%% ======================================================== [ Naptaker Config ]

\include "oll-core/package.ily"
\loadPackage naptaker

\setOption naptaker.staff-size #13

\setOption naptaker.extra-layout \layout {
  \omit Score.FretBoard
}


%%% ================================================================= [ Header ]

Key    = { \key aes \major }
Tempo  = { \tempo 4 = 235 }
global = { \Tempo \defaultTimeSignature \time 4/4 }

\header {
  title     = \markup \fontsize #6 { "Waiting for My Meeting" }
  %% subtitle  = "for Peng"
  opus      = "Patience is a Virtual EP"
  composer  = "EPBD"
  poet      = "PD"
  arranger  = "EPBD"
  copyright = "© 2018 EPBD"
}

%%% ================================================================= [ Layout ]

pageNumberColor = #(if (defined? 'pageNumberColor) pageNumberColor black)

\paper {
  two-sided = ##t
  print-first-page-number = ##t

  %% NOTE: margins and offset are scaled to paper-size
  %% inner-margin = 0.375\in
  %% outer-margin = 0.375\in
  %% binding-offset = 0.5\in

  evenHeaderMarkup = \markup {
    \column {
      \fill-line {
        \null
        \line {
          \with-color \pageNumberColor
          \on-the-fly #print-page-number-check-first
          \fromproperty #'page:page-number-string
        }
      }
    }
  }

  oddHeaderMarkup = \markup {
    \column {
      \fill-line {
        \line {
          \with-color \pageNumberColor
          \on-the-fly #print-page-number-check-first
          \fromproperty #'page:page-number-string
        }
        \null
      }
    }
  }
}

%%% =================================================================== [ Grid ]

\templateInit
#'("meta" "vox" "guitar" "drums up" "drums down")
#'(5 (13 . 2) 6 8 5 5 16 9 1)

\include "parts/lyrics.ily"

\Naptaker

\gridDisplay
\gridCheck

\include "naptaker/mtf-improviso.ily"

%%% ==================================================================== [ EOF ]

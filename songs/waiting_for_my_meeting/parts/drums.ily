\gridPutMusic "drums up" 1 \drummode {
  \set Staff.instrumentName = "PD"
  \override MultiMeasureRest.staff-position = #2
  \override Rest.staff-position = #0
  \repeat volta 6 {
    R1 |
    r2
  }
  \alternative {
    { s2 | }
    { hhho4 r | }
    { s2 |
      R1*2 | }
  }
}

\gridPutMusic "drums down" 1 \drummode {
  <<
    {
      \repeat volta 6 {
        s1 |
        s2
      }
      \alternative {
        { <bd toml sn>4 q | }
        { <bd sn>4 s | }
        { <bd toml sn>4 q |
          s1*2 |
        }
      }
    }
    \new DrumStaff \with {
      drumStyleTable = #preston-drums
      instrumentName = "PD2"
    } {
      <<
        \new DrumVoice {
          \voiceOne
          \repeat volta 3 {
            hhho4 4 4 4 |
            hhho4 hhho
          }
          \alternative {
            { hhho4 hhho | }
            { hhho4 hhho | }
            { hhho4 hhho |
              \repeat percent 2 {
                hhho4 hhho hhho hhho |
              }
            }
          }
        }
        \new DrumVoice {
          \voiceTwo
          \repeat volta 3 {
            bd4 <bd sn> bd <bd sn> |
            bd4 <bd sn>
          }
          \alternative {
            { bd4 <bd sn> }
            { bd4 <bd sn> }
            { bd4 <bd sn>
              \repeat percent 2 {
                bd4 <bd sn> bd <bd sn>
              }
            }
          }
        }
      >>
    }
  >>
}


\gridPutMusic "drums up" 2 \drummode {
  \repeat volta 6 {
    hhho4 4 4
  }
  \alternative {
    { hhho4 |
      hhho4 4 4 4 | }
    { hhho4 |
      hhho4 4 4 4 | }
    { hhho4 |
      \repeat percent 3 {
        hhho4 4 4 4 |
      }
      %% hhho4 4 4 hho |
    }
  }
}

\gridPutMusic "drums down" 2 \drummode {
  \repeat volta 6 {
    bd4 <bd sn> bd
  }
  \alternative {
    { <bd sn>4 |
      bd4 <bd sn> bd <bd sn> | }
    { <bd sn>4 |
      bd4 <bd sn> bd <bd sn> | }
    { <bd sn>4 |
      \repeat percent 3 {
        bd4 <bd sn> bd <bd sn> |
      }
    }
  }
}


\gridPutMusic "drums up" 3 \drummode {
  \revert Rest.staff-position
  \repeat volta 3 {
    <hh \parenthesize cymc>4 r8 hh4 r8 hh4 |
  }
  \alternative {
    { hh4 r8 hh4 r8 hh4 | }
    { hh4 r8 hh8 hh hh hh hh | }
    { hh4 r8 hh4 r8 hh4 |
      hh4 r8 hh4 r8 hh4 |
      hh4 r8 cb cb cb cb cb | }
  }
}

\gridPutMusic "drums down" 3 \drummode {
  \slurUp
  \repeat volta 3 {
    bd4 sn8 bd4 \drag sn8 bd \parenthesize sn |
  }
  \alternative {
    { bd4 sn8 bd4 \drag sn8 bd4 | }
    { bd8 sn <bd sn>8 r8 bd4 bd | }
    { bd4 sn8 bd4 \drag sn8 bd4 |
      bd4 sn8 bd4 \drag sn8 bd8 \drag sn |
      bd8 sn <bd sn> r bd4 bd | }
  }
}


\gridPutMusic "drums up" 4 \drummode {
  cymc4. hhho hhho4 |
  hhho4. hhho hhho4 |
  hhho4. hhho hhho4 |
  hhho4 s s2 |

  cymc4 hhho hhho hhho |
  hhho4 4 4 4 |
  hhho4 4 4 4 |
  hhho4 s tomh8 tomh toml toml |

  \repeat unfold 2 {
    cymr1 |
    s1*3 |
  }
}

\gridPutMusic "drums down" 4 \drummode {
  bd4 \drag sn8 bd4 sn8 bd4 |
  bd4 \drag sn8 bd4 sn8 bd4 |
  bd4 \drag sn8 bd4 \drag sn8 bd8 sn |
  bd8 sn <bd sn> sn <bd sn> sn <bd sn> sn |

  \repeat unfold 3 {
    bd4 <bd sn> bd <bd sn> |
  }
  bd4 \drag <bd sn>8 sn bd4 bd |


  bd4 <bd toml sn> <bd toml> <bd toml sn> |
  <bd toml>4 <bd toml sn> <bd toml> <bd toml sn> |
  <bd toml>4 <bd toml sn> <bd toml> <bd toml sn> |
  <bd toml>4 \drag <bd sn>8 sn <bd toml> \drag sn <bd sn> sn |


  bd4 <bd toml sn> <bd toml> <bd toml sn> |
  <bd toml>4 <bd toml sn> <bd toml> <bd toml sn> |
  <bd toml>4 <bd toml sn> <bd toml>8 sn <bd sn> sn |
  <bd toml>8 sn <bd sn> sn <bd toml> sn <bd sn> \drag sn |
}


\gridPutMusic "drums up" 5 \drummode {
  \repeat volta 6 {
    \parenthesize cymc1 |
    s2
  }
  \alternative {
    { s2 | }
    { s2 | }
    { s2 | s1*2 | }
  }
}

\gridPutMusic "drums down" 5 \drummode {
  \repeat volta 6 {
    \repeat unfold 3 { bd4 <bd sn> }
  }
  \alternative {
    { bd4 <bd sn> | }
    { bd4 <bd sn> | }
    { \repeat unfold 5 { bd4 <bd sn> } }
  }
}


\gridPutMusic "drums up" 6 \drummode {
  \repeat volta 4 {
    <hhho \parenthesize cymc>4. hhho hhho4 |
  }
  \alternative {
    { hhho4. hhho hhho4 | }
    { hhho8 s4 cb 8 8 8 8 8 | }
    { hhho4. hhho hhho4 | }
    { hhho8 s4 cb 8 8 8 8 8 | }
  }
}

\gridPutMusic "drums down" 6 \drummode {
  \repeat volta 4 {
    bd4 \drag sn8 bd4 \drag sn8 bd8 \parenthesize sn |
  }
  \alternative {
    { bd4 sn8 bd4 \drag sn8 bd4 | }
    { bd8 sn <bd sn>4 bd bd | }
    { bd4 sn8 bd4 \drag sn8 bd4 | }
    { bd8 sn <bd sn>4 bd bd | }
  }
}


\gridPutMusic "drums up" 7 \drummode {
  cymc4. hhho hhho4 |
  hhho4. hhho hhho4 |
  hhho4. hhho hhho4 |
  hho8 s s4 s2 |

  cymc4 hh hh hh |
  hh4 hh hh hh |
  hh4 hh hh hhho |
  hhho4 s tomh8 tomh toml toml |

  cymr1 |
  s1*2 |
  \override Rest.staff-position = #5
  s2 r8 hhho r hhho |
  \override Rest.staff-position = #0

  s1*4 |
}

\gridPutMusic "drums down" 7 \drummode {
  bd4 \drag sn8 bd4 sn8 bd4 |
  bd4 sn8 bd4 \drag sn8 bd4 |
  bd4 \drag sn8 bd4 \drag sn8 <bd sn>8 sn |
  <bd sn>8 sn <bd sn> sn <bd sn> sn <bd sn> sn |

  \repeat unfold 3 {
    bd4 <bd sn> bd <bd sn> |
  }
  bd4 \drag <bd sn>8 sn bd4 bd |

  bd4 <bd toml sn> <bd toml> <bd toml sn> |
  <bd toml>4 <bd toml sn> <bd toml> <bd toml sn> |
  <bd toml>4 <bd toml sn> <bd toml> <bd toml sn> |
  <bd toml>8 sn <bd sn> sn <bd toml>8 r <bd sn> r |

  bd4 <bd toml sn> <bd toml> <bd toml sn> |
  <bd toml>4 <bd toml sn> <bd toml> <bd toml sn> |
  <bd toml>4 <bd toml sn> <bd toml> <bd toml sn> |
  <bd toml>8 sn <bd sn> sn <bd sn> sn <bd sn> sn |
}


\gridPutMusic "drums up" 8 \drummode {
  \repeat volta 2 {
    \repeat unfold 7 {
      cymr4 4 4 4 |
    }
  }
  \alternative {
    { cymr4 4 4 4 | }
    { cymr4 s tomh8 tomh toml toml | }
  }
  \override Rest.staff-position = #0
}

\gridPutMusic "drums down" 8 \drummode {
  \repeat volta 2 {
    \repeat unfold 7 {
      bd4 <bd sn> bd <bd sn> |
    }
  }
  \alternative {
    { bd4 <bd sn> bd <bd sn> | }
    { bd4 \drag <bd sn>8 sn bd4 bd | }
  }
}


\gridPutMusic "drums up" 9 \drummode {
  toml4 r r2 |
}

\gridPutMusic "drums down" 9 \drummode {
  bd4 s s2 |
}

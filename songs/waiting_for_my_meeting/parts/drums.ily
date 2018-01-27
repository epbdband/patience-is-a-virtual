\gridPutMusic "drums up" 1 \drummode {
  \set Staff.instrumentName = "PD"
  R1 |
  r2 s2 |
  R1 |
  r2 hhho4 r |
  R1 |
  r2 s2 |
  R1*2 |
  hho4 hhho hhho hhho |
  \repeat unfold 7 {
    hhho4 4 4 4 |
  }
}

\gridPutMusic "drums down" 1 \drummode {
  \repeat unfold 4 {
    s1 |
  }
  \alternative {
    { s2 <bd tomfl sn>4 q | }
    { s2 <bd sn>4 s | }
    { s2 <bd tomfl sn>4 q | }
    { s1 | }
    }
  \repeat unfold 8 {
    bd4 <bd sn> bd <bd sn> |
  }
}

\gridPutMusic "drums up" 2 \drummode {
  \repeat unfold 2 {
    \repeat unfold 7 {
      hhho4 4 4 4 |
    }
  }
  \alternative {
    { hhho4 4 4 4 | }
    { hhho4 4 4 hho | }
  }
}

\gridPutMusic "drums down" 2 \drummode {
  \repeat unfold 2 {
    \repeat unfold 8 {
      bd4 <bd sn> bd <bd sn> |
    }
  }
}

\gridPutMusic "drums up" 3 \drummode {
  \repeat unfold 2{
    cymc4. hh hh4 |
    hh4. hh hh4 |
    hh4. hh hh4 |
  }
  \alternative {
    { hh8 s4 hh8 8 8 8 8 | }
    { hh8 s4 cb 8 8 8 8 8 | }
  }
}

\gridPutMusic "drums down" 3 \drummode {
  \slurUp
  bd4 \drag sn8 bd4 \drag sn8 bd4 |
  bd4 sn8 bd4 sn8 bd4 |
  bd4 sn8 bd4 \drag sn8 bd8 \drag sn |
  bd8 sn <bd sn>4 bd bd |

  bd4 sn8 bd4 sn8 bd4 |
  bd4 sn8 bd4 \drag sn8 bd4 |
  bd4 sn8 bd4 \drag sn8 bd8 sn |
  bd8 sn <bd sn>4 bd bd |
}

\gridPutMusic "drums down" 4 \drummode {
  bd4 \drag sn8 bd4 sn8 bd4 |
  bd4 \drag sn8 bd4 sn8 bd4 |
  bd4 \drag sn8 bd4 \drag sn8 bd8 sn |
  bd8 sn <bd sn> sn <bd sn> sn <bd sn> sn |

  \repeat unfold 3 {
    bd4 <bd sn> bd <bd sn>
  }
  bd4 \drag <bd sn>8 sn bd4 bd |

  \repeat unfold 3 {
    bd4 <bd sn> bd <bd sn>
  }
  bd4 \drag <bd sn>4 \drag <bd sn>8 sn <bd sn> sn |

  \repeat unfold 2 {
    bd4 <bd sn> bd <bd sn>
  }
  bd4 <bd sn> bd8 sn <bd sn> sn |
  bd8 sn <bd sn> sn bd sn <bd sn> \drag sn |
}

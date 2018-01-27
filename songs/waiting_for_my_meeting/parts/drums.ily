\gridPutMusic "drums up" 1 \drummode {
  \set Staff.instrumentName = "PD"
  \override MultiMeasureRest.staff-position = #2
  \override Rest.staff-position = #0
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
    { s2 <bd toml sn>4 q | }
    { s2 <bd sn>4 s | }
    { s2 <bd toml sn>4 q | }
    { s1 | }
    }
  \repeat unfold 8 {
    bd4 <bd sn> bd <bd sn> |
  }
}

\gridPutMusic "drums up" 2 \drummode {
  \repeat volta 2 {
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
  \repeat volta 2 {
    \repeat unfold 7 {
      bd4 <bd sn> bd <bd sn> |
    }
  }
  \alternative {
    { bd4 <bd sn> bd <bd sn> | }
    { bd4 <bd sn> bd <bd sn> | }
  }
}

\gridPutMusic "drums up" 3 \drummode {
  \repeat unfold 2 {
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
  \repeat unfold 2 {
    \include "notes/drums_down-III.ily"
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
  \repeat volta 2 {
    \parenthesize cymc1 |
    s1*7
  }
}

\gridPutMusic "drums down" 5 \drummode {
  \repeat volta 2 {
    \repeat unfold 8 {
      \repeat unfold 2 { bd4 <bd sn> } |
    }
  }
}

\gridPutMusic "drums up" 6 \drummode {
  \repeat unfold 2 {
    cymc4. hhho hhho4 |
    hhho4. hhho hhho4 |
    hhho4. hhho hhho4 |
    hhho8 s4 cb 8 8 8 8 8 |
  }
}

\gridPutMusic "drums down" 6 \drummode {
  \repeat unfold 2 {
    \include "notes/drums_down-III.ily"
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

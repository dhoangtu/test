\version "2.18.2"
\include "english.ly"

\header {
  title = "Ave verum corpus"
  composer = "William Byrd (c.1540-1623)"
  tagline = #'f
  cpyright = "Public Domain"
}

\paper {
  #(set-paper-size "a4")

  print-first-page-number = ##t
  ragged-bottom = ##f
  ragged-last-bottom = ##t

  #(define fonts
      (make-pango-font-tree "Liberation Serif"
                            "Liberation Serif"
                            "Liberation Serif"
                            (/ 35 40)))


  top-margin = 20\mm
  left-margin = 20\mm
  right-margin = 20\mm
  %indent = #0
  print-page-number = ##f
  systems-per-page = #3
  system-system-spacing.basic-distance = #5
}

global = {
  \time 4/2
  \key bf \major

  \override Accidental #'hide-tied-accidental-after-break = ##t
  \compressFullBarRests
  \override Voice.NoteHead #'style = #'baroque
  \set Score.doubleRepeatType = #":|.|:"
}

% Soprano music
musicSoprano = \relative c'' {
  % 1
  g\breve |
  fs1 a ~ |
  a2 g fs( g ~ |
  g4 fs8[ e] fs2) g1 |
  
  % 5
  a bf |
  c2 c d1 ~ |
  d2 c bf2. bf4 |
  a1 r2 g ~ |
  g f ef1 |
  
  % 10
  d r2 f ~ |
  f g a1 |
  a r2 g |
  bf1 a ~ |
  a2 bf g2. g4 |
  
  % 15
  fs1 r2 g ~ |
  g g a1 |
  g2 bf2. a4 a2 ~ |
  a( g) a1 |
  c bf2 a ~ |
  
  % 20
  a g f2. f4 |
  f2 f1 f2 |
  f1 r2 g ~ |
  g g g1 |
  g2 a1 a2 |
  
  % 25
  bf1 a2 a |
  c1. bf2 ~ |
  bf a1 bf2 ~ |
  bf a bf f |
  bf1 g |
  
  % 30
  r2 g2 bf1 |
  a r2 g |
  d'1. c2 ~ |
  c bf1( a4 g) |
  a2 a bf2.( a4 |
  
  % 35
  g1) fs |
  R\breve |
  r1 g2. bf4 |
  a2 g fs1 |
  g2 r r1 |
  
  % 40
  a2. c4 bf2( a) |
  a g fs a ~ |
  a4( g g1 fs2) |
  g1 r2 d |
  bf'1 g |
  
  % 45
  r2 g bf1 |
  a r2 g |
  d'1. c2 ~ |
  c bf1( a4 g) |
  a2 a bf2.( a4 |
  
  % 50
  g1) fs |
  R\breve |
  r1 g2. bf4 |
  a2 g fs1 |
  g2 r r1 |
  
  % 55
  a2. c4 bf2( a) |
  a2 g fs a ~ |
  a4( g g1 fs2) |
  g\breve |
  g |
  
  
  % 60
  g\longa*1/2
  \bar "|."
}

% Soprano lyrics
lyricsSoprano = \lyricmode {
  A -- ve ve -- rum cor -- pus,
  na -- tum de Ma -- ri -- a Vir -- gi -- ne:
  ve -- re pas -- sum, im -- mo -- la -- tum
  in cru -- ce __ pro ho -- mi -- ne:
  Cu -- ius la -- tus per -- fo -- ra -- tum
  un -- da flux -- it san -- gui -- ne,
  san -- gui -- ne.
  E -- sto no -- bis præ -- gu -- sta -- tum,
  in mor -- tis __ ex -- a -- mi -- ne.
  O dul -- cis! O pi -- e! O Je -- su, __ fi -- li Ma -- ri -- æ.
  Mi -- se -- re -- re me -- i,
  mi -- se -- re -- re me -- i, me -- i.
  O dul -- cis! O pi -- e! O Je -- su, __ fi -- li Ma -- ri -- æ.
  Mi -- se -- re -- re me -- i,
  mi -- se -- re -- re me -- i, me -- i.
  A -- men.
}

% Alto music
musicAlto = \relative c' {
  % 1
  d\breve |
  d1 c ~ |
  c2 c d1 ~ |
  d d |
  
  % 5
  f f |
  f2 f f1 ~ |
  f2 f d2. d4 |
  d1 r2 bf ~ |
  bf bf bf1 |
  
  % 10
  bf d ~ |
  d2 e f1 ~ |
  f c |
  r2 bf f'2. f4 |
  c2 d1 c2 |
  
  % 15
  d1 r2 e ~ |
  e e f1 |
  e2 f1 e2 |
  f( e4 d) c2 f ~ |
  f ef! d1 |
  
  % 20
  c d2. d4 |
  d1 c2. c4 |
  d1 r2 ef ~ |
  ef ef d1 |
  e2 f1 f2 |
  
  % 25
  f1 f2 f |
  g1 g2 bf, |
  f'1 f2 f |
  f2. ef4 d1 |
  r2 d ef1 |
  
  % 30
  d r2 d |
  d1 b |
  r2 bf f'1 |
  ef2 d1 c2 |
  r2 f, bf1 ~ |
  
  % 35
  bf2( a4 g) a1 |
  bf2. d4 c2 bf |
  a1 bf |
  c2. ef4 d2 a |
  d2. f4 ef2 d |
  
  % 40
  c a d2. c4 |
  a2 bf4( c) d2 ef |
  d c d1 |
  b\breve |
  r2 d ef1 |
  
  % 45
  d r2 d |
  d1 b |
  r2 bf f'1 |
  ef2 d1 c2 |
  r2 f, bf1 ~ |
  
  % 50
  bf2( a4 g) a1 |
  bf2. d4 c2 bf |
  a1 bf |
  c2. ef4 d2 a |
  d2. f4 ef2 d |
  
  % 55
  c a d2. c4 |
  a2 bf4( c) d2 ef |
  d c d1 |
  b c ~ |
  c2( bf ef1~|
  
  % 60
  ef2 d4 c) d\longa*1/4
}

% Alto lyrics
lyricsAlto = \lyricmode {
  A -- ve ve -- rum cor -- pus,
  na -- tum de Ma -- ri -- a Vir -- gi -- ne:
  ve -- re pas -- sum, im -- mo -- la -- tum
  in cru -- ce pro ho -- mi -- ne:
  Cu -- ius la -- tus per -- fo -- ra -- tum
  un -- da flux -- it san -- gui -- ne,
  san -- gui -- ne.
  E -- sto no -- bis præ -- gu -- sta -- tum,
  in mor -- tis,
  in mor -- tis ex -- a -- mi -- ne.
  O dul -- cis! O pi -- e! O Je -- su, fi -- li Ma -- ri -- æ.
  Mi -- se -- re -- re me -- i,
  mi -- se -- re -- re,
  mi -- se -- re -- re me -- i,
  Mi -- se -- re -- re, __
  mi -- se -- re -- re me -- i,
  O dul -- cis! O pi -- e! O Je -- su, fi -- li Ma -- ri -- æ.
  Mi -- se -- re -- re me -- i,
  mi -- se -- re -- re, __
  mi -- se -- re -- re me -- i,
  Mi -- se -- re -- re, __
  mi -- se -- re -- re me -- i,
  A -- men.
}

% Tenor music
musicTenor = \relative c' {
  % 1
  bf\breve |
  a |
  c1. bf2 |
  a1 b |
  
  % 5
  c d |
  f,2 f bf1 ~ |
  bf2 a g2. g4 |
  fs1 r2 g4( a |
  bf2) f g1 |
  
  % 10
  f bf |
  a2 c1 f,2 |
  r2 c' ef1 ~ |
  ef2 d1 c2 |
  f2.( f,4 g2) g |
  
  % 15
  a1 r2 c ~ |
  c c c1 |
  c2 d1 c2 |
  bf1 a |
  R\breve |
  
  % 20
  r2 c1 bf2 |
  a4. f8 bf1 a2 |
  bf1 r2 bf |
  g c1( b2) |
  c1 a2 a |
  d1 c2 c |
  
  % 25
  ef1. d2 ~ |
  d c d( c4 bf |
  c2) c bf1 |
  r2 bf c1 |
  b r2 g |
  
  % 30
  fs1 g ~ |
  g r1 |
  r2 bf f'2. ef4 |
  d2 c ef d ~ |
  d( c) d1 |
  
  % 35
  g,2. bf4 a2 g |
  fs1 g |
  r1 a2. c4 |
  bf2 a2. g4( g2 ~ |
  g fs) g fs ~ |
  
  % 40
  fs g a2. c4 |
  bf2 a4( g) a1 |
  g\breve |
  r2 bf c1 |
  b r2 g |
  
  % 45
  fs1 g ~ |
  g r1 |
  r2 bf f'2. ef4 |
  d2 c ef d ~ |
  d( c) d1 |
  
  % 50
  g,2. bf4 a2 g |
  fs1 g |
  r1 a2. c4 |
  bf2 a2. g4( g2 ~ |
  g fs)

  % 55
  g2 fs ~ |
  fs g a2. c4 |
  bf2 a4( g) a1 |
  g ef' ~ |
  ef2( d2. c4 c2 ~ |
  
  % 60
  c b4 a) b\longa*1/4
}

% Tenor lyrics
lyricsTenor = \lyricmode {
  A -- ve ve -- rum cor -- pus,
  na -- tum de Ma -- ri -- a Vir -- gi -- ne:
  ve -- re pas -- sum, im -- mo -- la -- tum
  in cru -- ce pro ho -- mi -- ne:
  Cu -- ius la -- tus per -- fo -- ra -- tum
  un -- da flux -- it san -- gui -- ne.
  E -- sto no -- bis præ -- gu -- sta -- tum,
  in mor -- tis __ ex -- a -- mi -- ne.
  O dul -- cis! O pi -- e! __ O Je -- su, fi -- li Ma -- ri -- æ.
  Mi -- se -- re -- re me -- i,
  mi -- se -- re -- re me -- i, me -- i,
  mi -- se -- re -- re __ me -- i.
  O dul -- cis! O pi -- e! __ O Je -- su, fi -- li Ma -- ri -- æ.
  Mi -- se -- re -- re me -- i,
  mi -- se -- re -- re me -- i, me -- i,
  mi -- se -- re -- re __ me -- i.
  A -- men.
}

% Basso music
musicBass = \relative c' {
  % 1
  g\breve |
  d1 f ~ |
  f2 ef d1 ~ |
  d g |

  % 5
  f bf,2 bf' ~ |
  bf a bf bf, |
  f'2.( ef8[ f] g2) g, |
  d'1 r2 ef ~ |
  ef d ef1 |

  % 10
  bf1. d2 ~ |
  d c f1 |
  f, r2 c' |
  g'1 f1 ~ |
  f2 bf, ef2. ef4 |

  % 15
  d1 r2 c ~ |
  c c f1 |
  c2 bf1 c2 |
  d( e) f1 |
  r1 r2 f ~ |

  % 20
  f ef d1 ~ |
  d2 bf f'2. f4 |
  bf,1 r2 ef ~ |
  ef c g'1 |
  c,2 f1 d2 |

  % 25
  bf1 f' |
  r2 c g'1 |
  f2 f f1 ~ |
  f2 f bf,1 |
  r2 g c1 |

  % 30
  g r2 g |
  d'1 g,2 g' |
  bf1. a2 |
  g1 f |
  f g2.( f4 |

  % 35
  ef1) d |
  R\breve |
  d2. f4 ef2. d4 |
  c1 d |
  g,2 d' c2 bf |

  % 40
  a1 g2 d' ~ |
  d4 f ef2 d c( |
  d ef d1) |
  g,\breve |
  r2 g c1 |

  % 45
  g r2 g |
  d'1 g,2 g' |
  bf1. a2 |
  g1 f |
  f g2.( f4 |

  % 50
  ef1) d |
  R\breve |
  d2. f4 ef2. d4 |
  c1 d |
  g,2 d' c bf |

  % 55
  a1 g2 d' ~ |
  d4 f ef2 d c( |
  d ef d1) |
  g, c2.( d4 |
  ef g g2 ef c) |

  % 60
  g'\longa*1/2
}

% Basso lyrics
lyricsBass = \lyricmode {
  A -- ve ve -- rum cor -- pus,
  na -- tum de __ Ma -- ri -- a Vir -- gi -- ne:
  ve -- re pas -- sum, im -- mo -- la -- tum
  in cru -- ce __ pro ho -- mi -- ne:
  Cu -- ius la -- tus per -- fo -- ra -- tum
  un -- da flux -- it san -- gui -- ne.
  E -- sto no -- bis præ -- gu -- sta -- tum,
  in mor -- tis ex -- a -- mi -- ne.
  O dul -- cis! O pi -- e! O Je -- su, fi -- li Ma -- ri -- æ.
  Mi -- se -- re -- re me -- i,
  mi -- se -- re -- re me -- i,
  mi -- se -- re -- re me -- i.
  O dul -- cis! O pi -- e! O Je -- su, fi -- li Ma -- ri -- æ.
  Mi -- se -- re -- re me -- i,
  mi -- se -- re -- re me -- i,
  mi -- se -- re -- re me -- i.
  A -- men.
}

% 10. Layout
\score {
   <<
    \new ChoirStaff = choirStaff \with {
        %\override StaffGrouper #'staff-staff-spacing #'padding = #3.0
    } <<
        \new Voice <<
        \set Staff.instrumentName = #"Soprano"
        \clef "treble"
        \global
        \musicSoprano
      >>
      \addlyrics { \lyricsSoprano }
      \new Voice <<
        \set Staff.instrumentName = #"Alto"
        \clef "treble_8"
        \global
        \musicAlto
      >>
      \addlyrics { \lyricsAlto }
      \new Voice <<
        \set Staff.instrumentName = #"Tenor"
        \clef "treble_8"
        \global
        \musicTenor
      >>
      \addlyrics { \lyricsTenor }
      \new Voice <<
        \set Staff.instrumentName = #"Basso"
        \clef "bass"
        \global
        \musicBass
      >>
      \addlyrics { \lyricsBass }
     >>
   >>

  \layout {
    ragged-bottom = ##f
    \context {
      \Lyrics
      \override  LyricHyphen #'minimum-distance = #0.8
    }

    \context {
      \Staff
      \consists Ambitus_engraver
       autoBeaming = ##t
      \override Slur #'transparent = ##t
      \remove "New_fingering_engraver"
    }
    \context {
      \Voice
      \remove "New_fingering_engraver"
    }

    \context {
      \RhythmicStaff
      \remove "Staff_symbol_engraver"
      \omit Clef
      \omit TimeSignature
      \omit NoteHead
      \omit Ambitus
      \override Stem.length = #6
      fontSize = #-1
      \stemUp
      \autoBeamOff
      \override Flag.stencil = #old-straight-flag
      \override Stem.thickness = #1.0
      \override Dots.extra-offset = #'(0.5 . 1)
      \override Stem.extra-offset = #'(0.5 . 0)
      \override Flag.extra-offset = #'(0.5 . 0)
      \override BreathingSign.text = \markup { \musicglyph #"scripts.rvarcomma" }
    }
  }
}

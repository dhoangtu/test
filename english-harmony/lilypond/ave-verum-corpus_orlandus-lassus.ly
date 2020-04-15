\version "2.18.2"
\include "deutsch.ly"

\header
{
  title="Ave verum corpus"
  composer="Orlandus Lassus"
  tagline= ""
  copyright = "Public Domain"
  source="http://www0.cpdl.org/wiki/images/0/01/Lassus_Ave_verum_corpus_down_a_minor_third.ly"
}

#(set-global-staff-size 15.5 )
#(ly:set-option 'point-and-click #f)

\paper {
  #(set-paper-size "a4")
  top-margin = 20\mm
  bottom-margin = 20\mm
  left-margin = 20\mm
  right-margin = 20\mm
  indent = 20\mm
  print-page-number = ##f

  ragged-bottom = ##f
  ragged-last-bottom = ##t
  system-system-spacing = #'((basic-distance . 17) (minimum-distance . 14) (padding . 7) (strechability . 250))
}

global = {
  \key c \major
  \time 2/2 \set Score.measureLength = #(ly:make-moment 2/1)
  \skip 1*98 \set Score.measureLength = #(ly:make-moment 3/1)
  \skip 1*3 \set Score.measureLength = #(ly:make-moment 2/1)
  \bar "||"
  \skip 1*4 \bar "|."
}

ficta = { \once \set suggestAccidentals = ##t }

cantus =  \relative c'' {
  d1. d2
  e1 cis
  r2 d1 g2~
  g4 f e2 d1
%5
  d1 d |
  r2 d1 d2~
  d4 c8 h a2 e'1~
  e1 fis
  g1. e2
%10
  e1 r |
  R\breve
  R\breve
  R\breve
  r2 g1 f2~
%15
  f2 e1 d2~ |
  d2 c2. h4 h a8 g
  a2. a4 g1
  R\breve
  R\breve
%20
  R\breve |
  g'2. f8 e d2 d
  f2. e8 d c2 c
  c2. c4 d2 g~
  g2 fis4 e fis2 fis
%25
  g1 r2 g~ |
  g2 g g1
  c,1 d2 f~
  f2 e d1~
  d\breve
%30
  cis1 r |
  R\breve
  R\breve
  r1 r2 a
  d2. c4 h a g2~
%35
  g4 a h c d e f2 |
  e1 r2 d
  f2. e8 d c2. d4
  e4 f e1 d4 c
  h4 c h2 a1
%40
  r1 r2 f' |
  d1 c
  c1 r2 d
  d2 d cis1
  e2 a, e'1
%45
  a,1 d~ |
  d2 d d d
  e1 d~
  d1 r
  d1 d2 d~
%50
  d4 d d2 d\breve^\fermata |
  h\breve
  h\breve |
}

altus =  \relative c' {
  r1 g'~
  g2 g a1
  fis1 g2. f4
  e2 a1 g2~
%5
  g4 \ficta fis8 e \ficta fis!2 g1~ |
  g1 fis
  fis1 a~
  a1 a
  h2. a4 h2 c
%10
  c1 a~ |
  a2 a gis1
  a2 fis1 fis2
  g\breve
  g1 b
%15
  a1 g |
  f1 e
  d1. d2
  e1 r
  R\breve
%20
  r1 r2 g~ |
  g4 f8 e d2 d g
  a2 a1 f2
  g1 g2. g4
  a2 a a2. a4
%25
  h\breve |
  c1. c2
  a1 b
  a2 g g1
  f2. e4 d1
%30
  e1 f~ |
  f2 g1 f2~
  f4 e8 d e2 d g
  g1. fis2
  fis1 r
%35
  R\breve |
  a1 b~
        b1 a~
  a e~
  e1 r2 d
%40
        f1 d2 b'
  b2 b a1 |
  g2. g4 b1
  a2 d, e a
  a\breve
%45
        fis1 g~
  g2 g g g |
  g1 g~
  g1 fis~
  fis2 fis fis fis
%50
        g1 fis\breve^\fermata
  g\breve |
  g\breve |
}


tenor = \relative c' {
  g'1. g,2
  c1 a
  d1 h
  c1 d~
%5
  d1 g,~ |
  g1 a
  d1 e~
  e1 d~
  d1 g2. g4
%10
  g1 f~ |
  f2 e e1~
  e2 d d1~
  d2 e d1
  e1 r
%15
  R\breve |
  R\breve
  r1 r2 g~
  g2 g f e
  a,2. h4 c d e2~
%20
  e2 e d1 |
  h2 g'2. f8 e d2~
  d4 d f2. e8 d c2~
  c2 e d1~
  d2 d d1~
%25
  d\breve |
  R\breve
  R\breve
  R\breve
  R\breve
%30
  r1 d |
  d1 c~
  c1 h
  e2. e4 a,1~
  a1 r
%35
  R\breve |
  R\breve
  R\breve
  R\breve
  R\breve
%40
  r2 a b1~ |
  b1 c~
  c1 d
  d2 a a1~
  a\breve
%45
  a1 g~ |
  g2 g g g
  c1 g~
  g1 a~
  a2 a a d
%50
        \tuplet 3/2 { b2. a4 g2 } a\breve^\fermata |
  g\breve
  g\breve |
}

bassus = \relative c {
  R\breve
  R\breve
  R\breve
  R\breve
%5
  R\breve |
  r1 d
  d1 a~
  a1 d
  g1. c,2
%10
  c1 f~ |
  f2 a e1
  cis2 d1 d2
  g\breve
  c,1 r
%15
  R\breve |
  R\breve
  r1 g'
  e1 a2. g4
  f2 d a'2. h4
%20
  c2 c, g'1 |
  g1 g2. f8 e
  d2 d f2. e8 d
  c1 g'
  d1. d2
%25
  g,\breve |
  R\breve
  R\breve
  R\breve
  R\breve
%30
  r1 d' |
  b1 c
  c1 g'2. f4
  e2 e d1~
  d1 r
%35
  R\breve |
  R\breve
  R\breve
  R\breve
  R\breve
%40
  r2 d b1~ |
  b1 f'
  c1 g'
  d1 a~
  a\breve
%45
  d1 r |
  R\breve
  R\breve
  r1 d~
  d2 d d d
%50
  g1 d\breve^\fermata |
  g,\breve
  g\breve |
}


lyricsSoprano = \lyricmode {
  A -- ve ve -- rum cor -- _ _ _ pus na -- tum
  de Ma -- _ _ _ ri -- a Vir -- gi -- ne,
  in cru -- ce pro ho -- _ _ _ _ _ mi -- ne,
  un -- _ _ _ da flu -- _ _ _ xit san -- gui -- ne,
  san -- _ _ _ gui -- ne,
  e -- sto no -- _ bis prae -- gu -- sta -- tum
  o dul -- _ _ _ _ _ _ _ _ _ _ cis,
  o pi -- _ _ _ _ _ _ _ _ _ _ _ _ e,
  o Je -- _ su,
  o Je -- su fi -- li Ma -- ri -- ae,
  mi -- se -- re -- re me -- i,
  mi -- se -- re -- re me -- i.
  A -- men.
}

lyricsAlto = \lyricmode {
  A -- ve ve -- rum cor -- _ _ pus na -- _ _ _ tum
  de Ma -- ri -- a Vir -- _ _ gi -- ne,
  ve -- re pas -- sum im -- mo -- la -- tum
  in cru -- ce pro ho -- _ mi -- ne,
  un -- _ _ _ da flu -- xit san -- gui -- ne,
  un -- da flu -- xit san -- gui -- ne,
  e -- sto no -- bis prae -- gu -- sta -- _ _ _ tum
  in mor -- _ _ _ _ tis e -- xa -- mi -- ne,
  o pi -- _ e,
  o Je -- su,
  o Je -- su fi -- li Ma -- ri -- ae,
  fi -- li Ma -- ri -- ae.
  mi -- se -- re -- re me -- i,
  mi -- se -- re -- re me -- i.
  A -- men.
}


lyricsTenor = \lyricmode {
  A -- ve ve -- rum cor -- _ pus na -- tum
  de Ma -- ri -- a Vir -- gi -- ne,
  ve -- re pas -- sum im -- mo -- la -- tum
  cu -- jus la -- tus per -- _ _ _ _ fo -- ra -- tum
  un -- _ _ _ da flu -- _ _ _ xit san -- gui -- ne,
  in mor -- tis e -- xa -- mi -- ne,
  o Je -- su fi -- li Ma -- ri -- ae,
  mi -- se -- re -- re me -- i,
  mi -- se -- re -- re me -- _ _ i.
  A -- men.
}

lyricsBasso = \lyricmode {
  de Ma -- ri -- a Vir -- gi -- ne,
  ve -- re pas -- sum im -- mo -- la -- tum
  cu -- jus la -- _ _ tus per -- _ _ fo -- ra -- tum
  un -- _ _ _ da flu -- _ _ _ xit san -- gui -- ne,
  in mor -- tis e -- xa -- _ _ mi -- ne,
  o Je -- su fi -- li Ma -- ri -- ae,
  mi -- se -- re -- re me -- i.
  A -- men.
}


\score
{
  \transpose c a, {
    \new ChoirStaff <<
      \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S." } << \global
      \new Voice="v1" {
        \clef violin
        \cantus }
      \new Lyrics \lyricsto "v1" {\lyricsSoprano }
      >>

      \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A." } << \global
      \new Voice="v2" {
                    \clef violin
        \altus}
      \new Lyrics \lyricsto "v2" {\lyricsAlto }
      >>

      \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T." } << \global
      \new Voice="v3" {
        \clef "G_8"
        \tenor }
      \new Lyrics \lyricsto "v3" {\lyricsTenor }
      >>

      \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B." } << \global
      \new Voice="v4" {
        \clef bass
        \bassus }
      \new Lyrics \lyricsto "v4" {\lyricsBasso}
      >>
    >>
  } % transpose

  \layout {
    \context { \Lyrics \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #2.5 }
    \context { \Staff \override TimeSignature.break-visibility = #end-of-line-invisible }
    \context { \Score \override BarNumber.padding = #2 }
    \context { \Voice \override NoteHead.style = #'baroque }
  }
}

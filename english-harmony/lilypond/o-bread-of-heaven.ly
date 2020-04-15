\version "2.18.2"

\header {
  title = "O Bread Of Heaven"
  composer = "Tr. Rev. E. VAUGHAN, C.SS.R."
  tagline = ##f
}

global= {
  \key c \major
  \time 3/4
  \tempo "Moderato"
  \dynamicUp
}

\paper {
  #(set-paper-size "a4")
  top-margin = 15\mm
  bottom-marign = 15\mm
  left-margin = 20\mm
  right-margin = 20\mm
  indent = #0
  #(define fonts
	 (make-pango-font-tree "Liberation Serif"
	 		       "Liberation Serif"
			       "Liberation Serif"
			       (/ 20 20)))
}

printItalic = \with {
  \override LyricText.font-shape = #'italic
}

% Soprano verse music
musicVerseSoprano = \relative c' {
  \mark "Chorus"
  %{ 01 %} g'4 \p a b |
  %{ 02 %} c2-> e,4 |
  %{ 03 %} e (a) g |
  %{ 04 %} f2 \> (e4) \! \breathe |
  %{ 05 %} g a b |
  %{ 06 %} c2-> c4 |
  %{ 07 %} d2-> b4 |
  %{ 08 %} c2-> r4 \bar "||"
  %{ 09 %} \mark "Solo"
                  e \f d c |
  %{ 10 %} c \> (b) \! a |
  %{ 11 %} g (c) d |
  %{ 12 %} c2 \> (b4) \! \breathe |
  %{ 13 %} e d c |
  %{ 14 %} c \> (b) \! a |
  %{ 15 %} d2 fis,4 |
  %{ 16 %} g2 r4 \bar "||"
  %{ 17 %} \mark "Chorus"
                  g a b |
  %{ 18 %} c2 e,4 |
  %{ 19 %} e (a) g |
  %{ 20 %} f2 \> (e4) \! \breathe |
  %{ 21 %} g \mf a b |
  %{ 22 %} c2-> c4 |
  %{ 23 %} d2-> \mark "rall." b4 |
  %{ 24 %} c2 r4 \bar "|."
}

% Alto verse music
musicVerseAlto = \relative c' {
  %{ 01 %} e4 f f |
  %{ 02 %} g2 c,4 |
  %{ 03 %} c (e) d |
  %{ 04 %} d2 (c4) |
  %{ 05 %} e f f |
  %{ 06 %} g2 a4 |
  %{ 07 %} a2 g4 |
  %{ 08 %} g2 r4 \bar "||"
  %{ 09 %} e e e |
  %{ 10 %} e2 c4 |
  %{ 11 %} e (g) a |
  %{ 12 %} g2 (g4) |
  %{ 13 %} g fis g |
  %{ 14 %} d2 e4 |
  %{ 15 %} d2 c4 |
  %{ 16 %} d2 r4 \bar "||"
  %{ 17 %} d e f |
  %{ 18 %} g2 c,4 |
  %{ 19 %} c (e) d |
  %{ 20 %} d2 (c4) |
  %{ 21 %} e e e |
  %{ 22 %} e2 e4 |
  %{ 23 %} d2 d4 |
  %{ 24 %} e2 r4 \bar "|."
}

% Tenor verse music
musicVerseTenor = \relative c' {
  %{ 01 %} c4 c d |
  %{ 02 %} c2 g4 |
  %{ 03 %} a (c) g |
  %{ 04 %} g2. \breathe |
  %{ 05 %} c4 c d |
  %{ 06 %} c2 e4 |
  %{ 07 %} d2 d4 |
  %{ 08 %} e2 r4 \bar "||"
  %{ 09 %} g, gis a |
  %{ 10 %} a (gis) a |
  %{ 11 %} c2 a4 |
  %{ 12 %} e'2 (d4) \breathe |
  %{ 13 %} c a g |
  %{ 14 %} a (b) c |
  %{ 15 %} g2 a4 |
  %{ 16 %} b2 r4 \bar "||"
  %{ 17 %} b c d |
  %{ 18 %} e2 g,4 |
  %{ 19 %} a (c) g |
  %{ 20 %} g2. \breathe |
  %{ 21 %} c4 c b |
  %{ 22 %} a2 a4 |
  %{ 23 %} a2 g4 |
  %{ 24 %} g2 r4 \bar "|."
}

% Basso verse music
musicVerseBasso = \relative c {
  %{ 01 %} c4 f d |
  %{ 02 %} e2 c4 |
  %{ 03 %} a2 b4 |
  %{ 04 %} c2. |
  %{ 05 %} c4 f d |
  %{ 06 %} e2 a4 |
  %{ 07 %} f2 g4 |
  %{ 08 %} c,2 r4 |
  %{ 09 %} c b a |
  %{ 10 %} e'2 f4 |
  %{ 11 %} c (e) f |
  %{ 12 %} g2 (g4) |
  %{ 13 %} c, d e |
  %{ 14 %} fis (g) c, |
  %{ 15 %} b2 a4 |
  %{ 16 %} g2 r4 |
  %{ 17 %} g' g g |
  %{ 18 %} c,2 c4 |
  %{ 19 %} a2 b4 |
  %{ 20 %} c2. |
  %{ 21 %} c'4 a gis |
  %{ 22 %} a2 g!4 |
  %{ 23 %} f2 g4 |
  %{ 24 %} c,2 r4 \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  O Bread of Heav'n be -- neath this veil, Thou dost my ver -- y God con -- ceal.
  My Je -- sus, dear -- est treas -- ure, hail! I love Thee, and a -- dor -- ing, kneel.
  Each lov -- ing soul by Thee is fed, with Thine own self in form of bread.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  O food of live! Thou who dost give the pledge of im -- mor -- tal -- i -- ty!
  I live; no, 'tis not I that live, God gives me life, God lives in me.
  He feeds my soul, He guides my ways, and with joy ev -- 'ry grief re -- pays.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  My dear -- est Good, who dost so bind. My herat with count -- less chains to Thee!
  O sweet -- est love, my soul shall find in Thy dear bonds true li -- ber -- ty.
  Thy -- self, Thou hast best -- owed on me, Thine, Thine for e -- ver I will be.
}

% Layout
\score {
    \new ChoirStaff <<
      \new Staff <<
        \clef "treble"
        \new Voice = "sopranos" { \voiceOne \global \stemUp \slurUp \musicVerseSoprano }
        \new Voice = "alto" { \voiceTwo \global \stemDown \slurDown \musicVerseAlto }
      >>
      \new Lyrics \lyricsto sopranos \verseOne
      \new Lyrics \printItalic \lyricsto sopranos \verseTwo
      \new Lyrics \printItalic \lyricsto sopranos \verseThree
      \new Staff <<
        \clef "bass"
        \new Voice = "tenor" { \voiceOne \global \stemUp \slurUp \musicVerseTenor }
        \new Voice = "basso" { \voiceTwo \global \stemDown \slurDown \musicVerseBasso }
      >>
    >>
}

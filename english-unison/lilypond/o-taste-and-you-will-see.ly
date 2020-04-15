\version "2.18.2"

\header {
  title = "O Taste And You Will See"
  composer = "Kathleen Pluth, Colin Brumby"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  copyright = \markup { \abs-fontsize #8 { \char ##x00A9 "Creative Commons 3.0, for non-commercial use" } }
}

global= {
  \key ees \major
  \time 3/4
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
  \override Lyrics.LyricSpace.minimum-distance = #3.0
}

\paper {
  #(set-paper-size "a5")
  top-margin = 10\mm
  bottom-marign = 10\mm
  left-margin = 10\mm
  right-margin = 10\mm
  indent = #0
  #(define fonts
	 (make-pango-font-tree "Liberation Serif"
	 		       "Liberation Serif"
			       "Liberation Serif"
			       (/ 20 20)))
  system-system-spacing = #'((basic-distance . 3) (padding . 3))
}

printItalic = \with {
  \override LyricText.font-shape = #'italic
}

% Verse music
musicVerseSoprano = \relative c' {
  \partial 4 ees4 |
  ees8 f g4. aes8 |
  bes2 (bes8) bes |
  ees c bes4. aes8 |
  g2 g4 |
  g8 c aes4. g8 |
  f aes g4. g8 |
  c g aes4 f |
  f (ees) \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  O taste, and you will see the good -- ness of the Lord:
  Hu -- man -- i -- ty, div -- in -- i -- ty, the bo -- dy and the blood.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  God fed his wand -- 'ring fold with man -- na from the sky.
  Much bet -- ter this than bread of old: we eat and ne -- ver die.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  E -- li -- jah once was fed when he could walk no more.
  An an -- gel brought to him that bread: the an -- gels this a -- dore.
}

verseFour = \lyricmode {
  \set stanza = #"4."
  To those who would be filled, this food is life in -- deed.
  To give it, life Him -- self was killed, and we from death are freed.
}

verseFive = \lyricmode {
  \set stanza = #"5."
  O wor -- thy is the lamb, our slain and ris -- en Lord,
  The Son of Ma -- ry, God and man, our eu -- cha -- rist a -- dored.
}

% Layout
\score {
    \new ChoirStaff <<
      \new Staff <<
        \clef "treble"
        \new Voice = "sopranos" { \global \stemUp \slurUp \musicVerseSoprano }
      >>
      \new Lyrics \lyricsto sopranos \verseOne
      \new Lyrics \printItalic \lyricsto sopranos \verseTwo
      \new Lyrics \lyricsto sopranos \verseThree
      \new Lyrics \printItalic \lyricsto sopranos \verseFour
      \new Lyrics \lyricsto sopranos \verseFive
    >>
}

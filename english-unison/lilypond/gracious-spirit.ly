\version "2.18.2"

\header {
  title = "Gracious Spirit"
  composer = ""
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

global= {
  \key g \major
  \time 4/4
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
}

\paper {
  #(set-paper-size "a5")
  top-margin = 10\mm
  bottom-margin = 10\mm
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
musicVerseSoprano = \relative c'' {
  %{	01	%} g4 fis8 (g) a4 g |
  %{	02	%} c c b2 |
  %{	03	%} e,4 fis g e |
  %{	04	%} d d d2 |
  %{	05	%} g4 fis8 (g) a4 g |
  %{	06	%} c c b2 |
  %{	07	%} e,4 fis g e |
  %{	08	%} d d d2 |
  %{	09	%} b'4 a g b |
  %{	10	%} d4. c8 b2 |
  %{	11	%} e,4 fis g c |
  %{	12	%} b a g2 \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  Gra -- cious Spir -- it, dwell with me!
  I my -- self would gra -- cious be;
  And with words that help and heal
  Would Thy life in mine re -- veal;
  And with ac -- tions bold and meek
  Would for Christ my Sav -- ior speak.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  Truth -- ful Spir -- it, dwell with me!
  I my -- self would truth -- ful be;
  And with wis -- dom kind and clear
  Let thy life in mine ap -- pear;
  And with ac -- tions broth -- er -- ly
  Speak my Lord's sin cer -- i -- ty.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  Ten -- der Spir -- it, dwell with me!
  I my -- self would ten -- der be;
  Shut my heart up like a flow'r
  In temp -- ta -- tion's dark -- some hour,
  O -- pen it when shines the sun,
  And his love by fra -- grance own.
}

verseFour = \lyricmode {
  \set stanza = #"4."
  Might -- y Spir -- it, dwell with me!
  I my -- self would might -- y be;
  Might -- y so as to pre -- vail,
  Where un -- aid -- ed man must fail;
  Ev -- er, by a might -- y hope,
  Press -- ing on and bear -- ing up.
}

verseFive = \lyricmode {
  \set stanza = #"5."
  Ho -- ly Spir -- it, dwell with me!
  I my -- self would ho -- ly be;
  Sep -- a -- rate from sin, I would
  Choose and cher -- ish all things good,
  And what -- ev -- er I can be
  Give to Him who gave me Thee!
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

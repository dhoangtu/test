\version "2.18.2"

\header {
  title = "Earth Has Many A Noble City"
  composer = "Christian Friedrich Witt, Edward Caswall"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

global= {
  \key g \major
  \time 4/4
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
  %{	01	%} d4 d g g |
  %{	02	%} a a b g |
  %{	03	%} d' d e c |
  %{	04	%} a d b2 |
  %{	05	%} b4 b a b |
  %{	06	%} g a g fis |
  %{	07	%} g e d g |
  %{	08	%} g fis g2 \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  Earth has ma -- ny_a no -- ble ci -- ty;
  Beth -- lehem, thou dost all ex -- cel:
  Out of thee the Lord from heav -- en
  Came to rule his Is -- ra -- el.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  Fair -- er than the sun at morn -- ing
  Was the star that told his birth,
  To the world its God an -- nounc -- ing
  Seen in flesh -- ly form on earth.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  East -- ern sa -- ges at his cra -- dle
  Make ob -- la -- tions rich and rare;
  See them give, in deep de -- vo -- tion,
  Gold and frank -- in -- cense and myrrh.
}

verseFour = \lyricmode {
  \set stanza = #"4."
  Sa -- cred gifts of mys -- tic mean -- ing:
  In -- cense doth their God dis -- close,
  Gold the King of kings pro -- claim -- eth,
  Myrrh his sep -- ul -- cher fore -- shows.
}

verseFive = \lyricmode {
  \set stanza = #"5."
  Je -- susm whom the gen -- tiles wor -- shiped
  At thy glad e -- pi -- pha -- ny,
  Un -- to Thee, with God the Fa -- ther,
  And the Spi -- rit, glo -- ry be.
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

\version "2.18.2"

\header {
  title = "In The Lord's Atoning Grief"
  composer = "Martin Herbst, John Fidanza Bonaventura, Frederick Oakeley"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

global= {
  \key f \major
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
musicVerseSoprano = \relative c'' {
  %{	01	%} a4 a d, e |
  %{	02	%} f g a2 |
  %{	03	%} a4 a8 (b!) c4 c |
  %{	04	%} b! b a2 |
  %{	05	%} a4 a bes bes |
  %{	06	%} g g a2 |
  %{	07	%} a4 a g f |
  %{	08	%} e e d2 \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  In the Lord's a -- ton -- ing grief
  be our rest and sweet re -- lief,
  Store we deep in heart's re -- cess
  All the shame and bit -- ter -- ness.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  Thorns, and cross, and nails, and lance,
  Wounds, our rich in -- he -- ri -- tance,
  Vi -- ne -- gar, and gall, and reed,
  And the cry his soul that freed.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  May these all our spi -- rits fill,
  And with love's de -- vo -- tion thrill;
  In our souls plant vir -- tue's root,
  And ma -- ture its glo -- rious fruit.
}

verseFour = \lyricmode {
  \set stanza = #"4."
  Cru -- ci -- fied! We Thee a -- dore,
  Thee with all our hearts im -- plore;
  Us with all thy saints u -- nite
  In the realms of heaven -- ly light.
}

verseFive = \lyricmode {
  \set stanza = #"5."
  Christ, by cow -- ard hands be -- trayed,
  Christ, for us a cap -- tive made,
  Christ, up -- on the bit -- ter tree
  slain for man, be praise to thee
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

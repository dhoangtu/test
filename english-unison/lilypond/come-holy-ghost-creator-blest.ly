\version "2.18.2"

\header {
  title = "Come, Holy Ghost, Creator Blest"
  composer = "Henry Gauntlett, Rabanus Maurus, Fr. Edward Caswall"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

global= {
  \key c \major
  \time 3/4
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
  \override Lyrics.LyricSpace.minimum-distance = #2.0
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
musicVerseSoprano = \relative c' {
                    \partial 4 c4 |
  %{	01	%} e2 g4 |
  %{	02	%} a2 b4 |
  %{	03	%} c2 g4 |
  %{	04	%} e2 g4 |
  %{	05	%} a2 c4 |
  %{	06	%} b2 a4 |
  %{	07	%} g2. ( |
  %{	08	%} g2) b4 |
  %{	09	%} c2 b4 |
  %{	10	%} a (b) c |
  %{	11	%} g2 e4 |
  %{	12	%} c2 d4 |
  %{	13	%} e (d) c |
  %{	14	%} g'2 e4 |
  %{	15	%} c2. ( |
                    c2 ) \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  Come, Ho -- ly Ghost, Cre -- a -- tor, come,
  From Thy bright heav'n -- ly throne:
  Come take pos -- ses -- sion of our souls,
  And make them all Thy own.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  Thou who art called the Ad -- vo -- cate,
  Best gift of God a -- bove,
  The liv -- ing spring, the liv -- ing fire,
  Sweet unc -- tion and true love.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  Thou who art sev'n -- fold in thy grace,
  Fin -- ger of God's right hand;
  His pro -- mise, teach -- ing lit -- tle ones,
  To speak and un -- der -- stand.
}

verseFour = \lyricmode {
  \set stanza = #"4."
  O guide our minds with thy blest light,
  With love our hearts in -- flame;
  And with thy strength, which ne'er de -- cays,
  Con -- firm our mor -- tal frame.
}

verseFive = \lyricmode {
  \set stanza = #"5."
  Far from us drive our dead -- ly foe;
  True peace un -- to us bring;
  And through all per -- ils lead us safe
  Be -- neath thy sa -- cred wing.
}

verseSix = \lyricmode {
  \set stanza = #"6."
  Through Thee may we the Fa -- ther know,
  Through Thee th'e -- ter -- nal Son,
  And Thee the Spi -- rit of them both,
  Thrice -- bless -- ed Three in One.
}

verseSeven = \lyricmode {
  \set stanza = #"7."
  All glo -- ry to the Fa -- ther be,
  With his co -- e -- qual Son,
  The same to Thee, great Ad -- vo -- cate,
  While end -- less ag -- es run.
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
      \new Lyrics \printItalic \lyricsto sopranos \verseSix
      \new Lyrics \lyricsto sopranos \verseSeven
    >>
}

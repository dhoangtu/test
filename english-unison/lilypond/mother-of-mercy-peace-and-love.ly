\version "2.18.2"

\header {
  title = "Mother Of Mercy, Peace And Love"
  composer = "Noel Jones, Vincent Uher"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  copyright = \markup { \abs-fontsize #8 { \char ##x00A9 "Creative Commons 3.0 License, for non-commercial use" } }
}

global= {
  \key c \major
  \time 3/4
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
}

\paper {
  #(set-paper-size "a5")
  top-margin = 10\mm
  bottom-margin = 5\mm
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
  %{	01	%} e4 e e |
  %{	02	%} a2 g4 |
  %{	03	%} f2 f4 |
  %{	04	%} e2. |
  %{	05	%} c'4 c b |
  %{	06	%} a2 g4 |
  %{	07	%} f2 e4 |
  %{	08	%} d2. |
  %{	09	%} e4 e e |
  %{	10	%} fis2 fis4 |
  %{	11	%} g (a) b |
  %{	12	%} c2. |
  %{	13	%} c4 c b |
  %{	14	%} a2 g4 |
  %{	15	%} f2 e4 |
  %{	16	%} d2. |
  %{	17	%} c4 c d |
  %{	18	%} e2 e4 |
  %{	19	%} e d4. (c8) |
  %{	20	%} c2. \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  Moth -- er of mer -- cy, peace and love,
  Thy Child is God come from a -- bove.
  As Christ thou lov -- est we would too
  In all we pon -- der, say or do,
  In all we pon -- der, say or do.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  Jo -- seph the guard -- ian, brave and wise,
  No -- thing was hid -- den from thine eyes.
  By dreams the Lord God guid -- ed thee
  May we fol -- low with con -- stan -- cy,
  May we fol -- low with con -- stan -- cy.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  Fa -- ther of Je -- sus, God Most High,
  Thy love so great brought our Lord nigh,
  Thy Child, thy gift to free a slave,
  Gave thee his life, the world to save.
  Gave thee his life, the world to save.
}

verseFour = \lyricmode {
  \set stanza = #"4."
  A Child for us, friend cru -- ci -- fied,
  A -- ris -- en, pres -- ent by our side,
  Vic -- tim and Priest, Oh mys -- ter -- y!
  Lord Je -- sus Christ, we wor -- ship Thee,
  Lord Je -- sus Christ, we wor -- ship Thee.
}

verseFive = \lyricmode {
  \set stanza = #"5."
  Glo -- ry to God, Fa -- ther of lights
  And to the Son, Lord, Je -- sus Christ,
  And Ho -- ly Ghost the Com -- fort -- er:
  One God in glo -- ry for ev -- er,
  One God in glo -- ry for ev -- er.
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

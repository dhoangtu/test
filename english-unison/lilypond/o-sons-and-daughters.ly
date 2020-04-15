\version "2.18.2"

\header {
  title = "O Sons And Daughters"
  composer = "Jean Tisserand, Tr. John Mason Neale"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

global= {
  \key c \major
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

% Soprano verse music
musicVerseSoprano = \relative c' {
                    \partial 4 a'4
  %{	01	%} c2 d4 |
  %{	02	%} e2 c4 |
  %{	03	%} d4(c4) b4 |
  %{	04	%} a2 a4 |
  %{	05	%} c2 d4 |
  %{	06	%} e2 c4 |
  %{	07	%} d4(c4) b4 |
  %{	08	%} a2 a4 |
  %{	09	%} a2 b4 |
  %{	10	%} a4(gis4) a4 |
  %{	11	%} b2 b4 |
  %{	12	%} e,2 b'4 |
  %{	13	%} c4 b2 |
                    a2 \fermata \bar "" \break

  %{	14	%} a4 |
  %{	15	%} a2 b4 |
  %{	16	%} a4(gis4) a4 |
  %{	17	%} b2 b4 |
  %{	18	%} e,2 b'4 |
  %{	19	%} c2 b4 |
                    a2 \fermata \bar "|."
}

% Verse lyrics
commonChorus = \lyricmode {
  \override LyricText.font-series = #'bold
  \override LyricText.font-size = #+3
  Al -- le -- lu -- ia
  Al -- le -- lu -- ia
  Al -- le -- lu -- ia
}

verseOne = \lyricmode {
  \set stanza = #"1."
  O sons and daugh -- ters of the King, whom heav'n -- ly hosts in glo -- ry sing,
  To -- day the grave has lost its sting. Al -- le -- lu -- ia.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  That Eas -- ter morn, at break of day, the faith -- ful wo -- men went their way
  to seek the tomb where Je -- sus lay. Al -- le -- lu -- ia.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  An an -- gel clad in white they see, who sits and speaks un -- to the three:
  ''Your Lord will go to Ga -- li -- lee.'' Al -- le -- lu -- ia.

  \commonChorus
}

verseFour = \lyricmode {
  \set stanza = #"4."
  That night th'A -- po -- stles met in fear; A -- mong them came their mas -- ter dear
  And said, ''My peace be with you here.'' Al -- le -- lu -- ia.
}

verseFive = \lyricmode {
  \set stanza = #"5."
  When Tho -- mas first the ti -- dings heard that they had seen the ri -- sen Lord,
  He doubt -- ed the di -- sci -- ples’ word. Al -- le -- lu -- ia.
}

latin = \lyricmode {
  \set stanza = #"6."
  O fi -- li -- i et fi -- li -- ae,
  Rex cae -- les -- tis, Rex glo -- ri -- ae
  mor -- te sur -- rex -- it ho -- di -- e. Al -- le -- lu -- ia.
}

% Layout
\score {
    \new ChoirStaff <<
      \new Staff <<
        \clef "treble"
        \new Voice = "sopranos" { \voiceOne \global \stemUp \slurUp \musicVerseSoprano }
      >>
      \new Lyrics \lyricsto sopranos \verseOne
      \new Lyrics \printItalic \lyricsto sopranos \verseTwo
      \new Lyrics \lyricsto sopranos \verseThree
      \new Lyrics \printItalic \lyricsto sopranos \verseFour
      \new Lyrics \printItalic \lyricsto sopranos \verseFive
      \new Lyrics \lyricsto sopranos \latin
    >>
}

\version "2.18.2"

\header {
  title = "O sons and daughters"
  composer = "Jean Tisserand"
  tagline = ##f
  copyright = "Public Domain"
}

global= {
  \key c \major
  \time 3/4
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
                    a2 \fermata

  %{	14	%} a4 |
  %{	15	%} a2 b4 |
  %{	16	%} a4(gis4) a4 |
  %{	17	%} b2 b4 |
  %{	18	%} e,2 b'4 |
  %{	19	%} c2 b4 |
                    a2 \fermata \bar "|."
}

% Alto verse music
musicVerseAlto = \relative c' {
                    \partial 4 a'4
  %{	01	%} e2 g4 |
  %{	02	%} g2 a4 |
  %{	03	%} f4(e4) d4 |
  %{	04	%} c2 e4 |
  %{	05	%} e2 a4 |
  %{	06	%} gis2 a4 |
  %{	07	%} b4(a4) gis4 |
  %{	08	%} a2 e4 |
  %{	09	%} d4(e4) f4 |
  %{	10	%} e2 e4 |
  %{	11	%} e2 dis4 |
  %{	12	%} e2 e4 |
  %{	13	%} e4 e4.(d8) |
                    c2

  %{	14	%} e4 |
  %{	15	%} f2 f4 |
  %{	16	%} e2 e4 |
  %{	17	%} e2 dis4 |
  %{	18	%} e2 gis4 |
  %{	19	%} a2 gis4 |
                    e2 \bar "|."
}

% Tenor verse music
musicVerseTenor = \relative c {
                    \partial 4 a'4
  %{	01	%} c2 b4 |
  %{	02	%} c2 a4 |
  %{	03	%} a2 gis4 |
  %{	04	%} a2 c4 |
  %{	05	%} c2 b4 |
  %{	06	%} c4(b4) a4 |
  %{	07	%} f'4(e4) d4 |
  %{	08	%} c2 c4 |
  %{	09	%} d4(c4) d4 |
  %{	10	%} c4(b4) a4 |
  %{	11	%} gis2 fis4 |
  %{	12	%} gis2 gis4 |
  %{	13	%} a2 gis4 |
                    a2 \fermata

  %{	14	%} c4 |
  %{	15	%} c2 d4 |
  %{	16	%} c4(b4) a4 |
  %{	17	%} fis4(gis4) a4 |
  %{	18	%} gis2 e'4 |
  %{	19	%} e4 e4.(d8) |
                    c2 \fermata
}

% Basso verse music
musicVerseBasso = \relative c {
                    \partial 4 a'4
  %{	01	%} a2 g4 |
  %{	02	%} c,2 f4 |
  %{	03	%} d4(e4) e4 |
  %{	04	%} a,2 a'4 |
  %{	05	%} a4(g4) f4 |
  %{	06	%} e2 f4 |
  %{	07	%} d4(e4) e4 |
  %{	08	%} g,2 a'8(g8) |
  %{	09	%} f4(e4) d4 |
  %{	10	%} e4.(d8) c4 |
  %{	11	%} b2 b4 |
  %{	12	%} e2 e8(d8) |
  %{	13	%} c8(d8) e2 |
                    a,2

  %{	14	%} a'4 |
  %{	15	%} fis4(e4) d4 |
  %{	16	%} e4(d4) c4 |
  %{	17	%} b2 b4 |
  %{	18	%} e2 e4 |
  %{	19	%} a,8(c8) e2 |
                    a,2
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
        \new Voice = "alto" { \voiceTwo \global \stemDown \slurDown \musicVerseAlto }
      >>
      \new Lyrics \lyricsto sopranos \verseOne
      \new Lyrics \printItalic \lyricsto sopranos \verseTwo
      \new Lyrics \lyricsto sopranos \verseThree
      \new Lyrics \printItalic \lyricsto sopranos \verseFour
      \new Lyrics \printItalic \lyricsto sopranos \verseFive
      \new Lyrics \lyricsto sopranos \latin
      \new Staff <<
        \clef "bass"
        \new Voice = "tenor" { \voiceThree \global \stemUp \slurUp \musicVerseTenor }
        \new Voice = "bass" { \voiceThree \global \stemDown \slurDown \musicVerseBasso }
      >>
    >>
}

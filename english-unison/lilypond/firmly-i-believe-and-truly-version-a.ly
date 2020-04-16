\version "2.18.2"

\header {
  title = "Firmly I believe And Truly"
  composer = "Drakes Boughton, Edward Elgar, Cardinal J.H. Newman"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

global= {
  \key d \major
  \time 4/4
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
  \override Lyrics.LyricSpace.minimum-distance = #3.0
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
  %{	01	%} fis4 fis a fis |
  %{	02	%} fis4. e8 e4 fis |
  %{	03	%} g g b g |
  %{	04	%} fis e fis2 |
  %{	05	%} a4 a b b |
  %{	06	%} cis b8 (a) d4 a |
  %{	07	%} g fis8 (e) a4 d, |
  %{	08	%} fis4. e8 d2 \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  Firm -- ly I be -- lieve and tru -- ly
  God is Three, and God is One;
  And I next ack -- now -- ledge dul -- y
  Man -- hood tak -- en by the Son.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  And I trust and hope most ful -- ly
  In that Man -- hood cru -- ci -- fied;
  And each thought and deed un -- ru -- ly
  Do to death, as He has died.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  Simp -- ly to his grace and whol -- y
  Light and life and strength be -- long,
  And I love sup -- rem -- ly sole -- ly,
  Him the ho -- ly, him the strong.
}

verseFour = \lyricmode {
  \set stanza = #"4."
  And I hold in ven -- er -- a -- tion,
  For the love of him a -- lone,
  Ho -- ly Church as his cre -- a -- tion,
  And her teach -- ings are his own.
}

verseFive = \lyricmode {
  \set stanza = #"5."
  And I take with joy what -- ev -- er
  Now be -- sets be, pain or fear,
  And with a strong will I sev -- er
  All the ties which bind me here.
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

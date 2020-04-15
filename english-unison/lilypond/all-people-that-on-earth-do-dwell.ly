\version "2.18.2"

\header {
  title = "All People That On Earth Do Dwell"
  composer = "Louis Bourgeois, Thomas Ken"
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
musicVerseSoprano = \relative c'' {
                    \partial 4 g4 |
  %{	01	%} g fis e d |
  %{	02	%} g a b \fermata b |
  %{	03	%} b b a g |
  %{	04	%} c b a \fermata g |
  %{	05	%} a b a g |
  %{	06	%} e fis g \fermata d' |
  %{	07	%} b g a c |
  %{	08	%} b a g \fermata \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  All peo -- ple that on earth do dwell, Sing to the Lord with cheer -- ful voice.
  Him serve with fear, His praise forth tell; Come ye be -- fore Him and re -- joice.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  The Lord, ye know, is God in -- deed; With -- out our aid He did us make;
  We are His folk, He doth us feed, And for his sheep He doth us take.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  O en -- ter then His gates with praise; Ap -- proach with joy His courts un -- to;
  Praise, laud, and bless His Name al -- ways, For it is seem -- ly so to do.
}

verseFour = \lyricmode {
  \set stanza = #"4."
  For why? the Lord our God is good; His mer -- cy is for ev -- er sure;
  His truth at all times firm -- ly stood, And shall from age to age en -- dure.
}

verseFive = \lyricmode {
  \set stanza = #"5."
  To Fa -- ther, Son and Ho -- ly Ghost, The God whom heav'n and earth a -- dore.
  From men and from the an -- gel host, Be praise and glo -- ry ev -- er  more.
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

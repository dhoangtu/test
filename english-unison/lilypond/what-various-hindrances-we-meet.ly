\version "2.18.2"

\header {
  title = "What Various Hindrances We Meet"
  composer = "William Cowper, W. Oliver"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

global= {
  \key a \major
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
  system-system-spacing = #'((basic-distance . 2) (padding . 2))
}

printItalic = \with {
  \override LyricText.font-shape = #'italic
}

% Verse music
musicVerseSoprano = \relative c'' {
  %{	01	%} a4 a a |
  %{	02	%} fis2 a4 |
  %{	03	%} b2 gis4 |
  %{	04	%} fis2. |
  %{	05	%} fis4 gis a |
  %{	06	%} b2 e,4 |
  %{	07	%} gis2 fis4 |
  %{	08	%} e2. |
  %{	09	%} e4 a b |
  %{	10	%} cis2 a4 |
  %{	11	%} d2 cis4 |
  %{	12	%} b2. |
  %{	13	%} cis4 cis cis |
  %{	14	%} b2 a4 |
  %{	15	%} a2 gis4 |
  %{	16	%} a2. \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  What va -- rious hin -- dran -- ces we meet
  In com -- ing to a mer -- cy seat;
  Yet who that knows the worth of prayer,
  But wish -- es to be oft -- en there.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  Prayer makes the dark -- ened cloud with -- draw,
  Prayer climbs the lad -- der Ja -- cob saw;
  Gives ex -- er -- cise to faith and love,
  Brings ev -- ery bless -- ing from a -- bove.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  Re -- strain -- ing prayer, we cease to fight;
  Prayer makes the christ -- ian's arm -- or bright;
  And sa -- tan tram -- bles, when he sees
  The weak -- est saint up -- on his knees.
}

verseFour = \lyricmode {
  \set stanza = #"4."
  While Mo -- ses stood with arms spread wide,
  Suc -- cess was found on Is -- rael's side;
  But when through wea -- ri -- ness they failed,
  The mo -- ment A -- ma -- lek pre -- vailed.
}

verseFive = \lyricmode {
  \set stanza = #"5."
  Have you no words? Ah, think a -- gain,
  Words flow a -- pace when you com -- plain;
  And fill your fel -- low crea -- ture's ear
  With the sad tale of all your care.
}

verseSix = \lyricmode {
  \set stanza = #"6."
  Were half the breath thus vain -- ly spent,
  To heav'n in sup -- pli -- ca -- tion sent;
  Your cheer -- ful song would oft' -- ner be,
  ''Hear what the Lord has done for me.''
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
      \new Lyrics \lyricsto sopranos \verseFour
      \new Lyrics \printItalic \lyricsto sopranos \verseFive
      \new Lyrics \lyricsto sopranos \verseSix
    >>
}

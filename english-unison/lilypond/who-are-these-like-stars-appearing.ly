\version "2.18.2"

\header {
  title = "Who Are These Like Stars Appearing"
  composer = "All Saints"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

global= {
  \key bes \major
  \time 4/4
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
}

\paper {
  #(set-paper-size "a5")
  top-margin = 5\mm
  bottom-margin = 10\mm
  left-margin = 10\mm
  right-margin = 10\mm
  indent = #0
  #(define fonts
	 (make-pango-font-tree "Liberation Serif"
	 		       "Liberation Serif"
			       "Liberation Serif"
			       (/ 20 20)))
  page-count = #1
}

printItalic = \with {
  \override LyricText.font-shape = #'italic
}

% Verse music
musicVerseSoprano = \relative c'' {
  %{	01	%} bes4 f g g |
  %{	02	%} f4. ees8 d4 bes |
  %{	03	%} f' g8 a bes4 a |
  %{	04	%} g g f2 |
  %{	05	%} bes4 f g g |
  %{	06	%} f4. ees8 d4 bes |
  %{	07	%} f' g8 (a) bes4 a |
  %{	08	%} g g f2 |
  %{	09	%} c'4 c c bes8 (c) |
  %{	10	%} d4 c8 (bes) c2 |
  %{	11	%} bes4 f g8 (a) bes4 |
  %{	12	%} c c bes2 \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  Who are these like stars ap -- pear -- ing,
  these, be - fore God's throne who stand?
  Each a gol -- den crown is wear -- ing;
  who are all this glo -- rious band?
  Al -- le -- lu -- ia! Hark, they sing,
  prais -- ing loud their heaven -- ly King.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  Who are these of dazz -- ling bright -- ness,
  clothed in _ God's own right -- eous -- ness
  These, in robes of pur -- est white -- ness,
  shall their lust -- er still pos -- sess,
  still un -- touched by time's rude hand?
  Whence came all this glor -- ious band?
}

verseThree = \lyricmode {
  \set stanza = #"3."
  These are they who have con -- tend -- ed
  for their _ Sav -- ior's hon -- or long,
  wrestl -- ing on till life was end -- ed,
  fol -- l'wing not the sin -- ful -- throng.
  These who well the fight sus -- tained,
  tri -- umph through the Lamb have gained.
}

verseFour = \lyricmode {
  \set stanza = #"4."
  These are they whose hearts were riv -- en,
  sore with _ woe and ang -- uish tried,
  who in prayer full oft have striv -- en
  with the God they glo -- ri -- fied;
  now, their pain -- ful con -- flict o'er,
  God has bid them weep no more.
}

verseFive = \lyricmode {
  \set stanza = #"5."
  These, the Al -- might -- y con -- tem -- plat -- ing,
  did as priests be -- fore him stand,
  soul and bo -- dy al -- ways wait -- ing
  day and night at his com -- mand:
  now in God's most ho -- ly place
  blest they stand be -- fore his face.
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

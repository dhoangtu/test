\version "2.18.2"

\header {
  title = "Lo, He Comes, With Clouds Descending"
  composer = "Charles Wesley"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

global= {
  \key g \major
  \time 3/4
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
musicVerseSoprano = \relative c'' {
  %{	01	%} b2 d4 |
  %{	02	%} b2 g4 |
  %{	03	%} c2 a4 |
  %{	04	%} fis2 d4 |
  %{	05	%} g2 a4 |
  %{	06	%} b4. (a8) g4 |
  %{	07	%} fis e2 |
  %{	08	%} d2. |
  %{	09	%} fis2 a4 |
  %{	10	%} fis2 d4 |
  %{	11	%} g2 a4 |
  %{	12	%} b2 g4 |
  %{	13	%} c2 b4 |
  %{	14	%} a4. (b8) g4 |
  %{	15	%} g8 (fis) fis2 |
  %{	16	%} e2. |
  %{	17	%} gis2 gis4 |
  %{	18	%} a2 a4 |
  %{	19	%} fis2 fis4 |
  %{	20	%} g2 g4 |
  %{	21	%} e2 e4 |
  %{	22	%} fis2 g4 |
  %{	23	%} g2 fis4 |
  %{	24	%} g2. \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  Lo, He comes, with clouds de -- scend -- ing,
  Once for our sal -- va -- tion slain;
  Thou -- sand thou -- sand saints at -- tend -- ing
  Swell the tri -- umph of his train:
  Al -- le -- lu -- ia! Al -- le -- lu -- ia!
  Christ, the Lord, re -- turns to reign.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  Eve -- ry eye shall now be -- hold Him,
  Robed in dread -- ful maj -- es -- ty;
  Those who set at naught and sold him,
  Pierced, and nailed him to the tree,
  Deep -- ly wail -- ing, deep -- ly wail -- ing,
  Shall the true Mes -- si -- ah see.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  Now re -- demp -- tion, long ex -- pect -- ed,
  See in sol -- emn pomp ap -- pear:
  All his saints, by men re -- ject -- ed,
  Now shall meet him in the air:
  Al -- le -- lu -- ia! Al -- le -- lu -- ia!
  See the day of God ap -- pear.
}

verseFour = \lyricmode {
  \set stanza = #"4."
  Yea, a -- men; let all a -- dore Thee,
  High on thine e -- ter -- nal throne;
  Sav -- ior, take the pow'r and glo -- ry;
  Claim the king -- doms for thine own:
  Al -- le -- lu -- ia! Al -- le -- lu -- ia!
  Thou shalt reign, and Thou a -- lone.
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
    >>
}

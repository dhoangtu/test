\version "2.18.2"

\header {
  title = "Alleluia, Sing To Jesus"
  composer = "Rowland H. Prichard, William Chatterton Dix"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

global= {
  \key f \major
  \time 3/4
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
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

minorNote = #(define-music-function
  (parser location note)
  (ly:music?)
  #{
    \tweak font-size #-3
    #note
  #}
)

% Verse music
musicVerseSoprano = \relative c' {
  %{	01	%} f2 g4 |
  %{	02	%} f4. (g8) a4 |
  %{	03	%} bes2 a4 |
  %{	04	%} g (f) g |
  %{	05	%} c2 bes4 |
  %{	06	%} a2 a4 |
  %{	07	%} g (f) g |
  %{	08	%} f2. |
  %{	09	%} f2 g4 |
  %{	10	%} f4. (g8) a4 |
  %{	11	%} bes2 a4 |
  %{	12	%} g (f) g |
  %{	13	%} c2 bes4 |
  %{	14	%} a2 a4 |
  %{	15	%} g (f) g |
  %{	16	%} f2. |
  %{	17	%} c'2 c4 |
  %{	18	%} c (bes) a |
  %{	19	%} bes2 bes4 |
  %{	20	%} bes (a) g |
  %{	21	%} a2 a4 |
  %{	22	%} a (bes) c |
  %{	23	%} c (bes) a |
  %{	24	%} g2. |
  %{	25	%} c4 (a) c |
  %{	26	%} bes (g) bes |
  %{	27	%} a (f) a |
  %{	28	%} g8 (a bes a) g4 |
  %{	29	%} c2 c4 |
  %{	30	%} d (c) bes |
  %{	31	%} a2 g4 |
  %{	32	%} f2. \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  Al -- le -- lu -- ia! sing to Je -- sus,
  His the scep -- ter, His the throne;
  Al -- le -- lu -- ia! His the tri -- umph,
  His the vic -- to -- ry a -- lone.
  Hear the songs of ho -- ly Zi -- on
  thun -- der like a might -- y flood:
  Je -- sus out of ev -- ery na -- tion
  has re -- deemed us by His blood.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  Al -- le -- lu -- ia! not as or -- phans
  are we left in sor -- row now:
  Al -- le -- lu -- ia! he is near us;
  faith be -- lieves, but knows not how.
  Though the cloud from sight re -- ceived him
  whom the an -- gels now a -- dore,
  shall our hearts for -- get his pro -- mise,
  'I am with you ev -- er -- more'?
}

verseThree = \lyricmode {
  \set stanza = #"3."
  Al -- le -- lu -- ia! bread of hea -- ven,
  here on earth our food, our stay:
  Al -- le -- lu -- ia! here the sin -- ful
  come to you from day to day.
  In -- ter -- ces -- sor, friend of sin -- ners,
  earth's re -- deem -- er, plead for me,
  where the songs of all the sin -- less
  sweep ac -- ross the crys -- tal sea.
}

verseFour = \lyricmode {
  \set stanza = #"4."
  Al -- le -- lu -- ia! King e -- ter -- nal,
  you, the Lord of lords we own;
  Al -- le -- lu -- ia! born of Mary,
  earth your foot -- stool, hea -- ven your throne:
  you, with -- in the veil have en -- tered,
  robed in flesh, our great high priest;
  yours the blood and yours the bo -- dy,
  in our eu -- char -- ist -- ic feast.
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
    >>
}

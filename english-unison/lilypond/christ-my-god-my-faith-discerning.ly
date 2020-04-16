\version "2.18.2"

\header {
  title = "Christ My God, My Faith Discerning"
  composer = "Noel Jones, Vincent Uher"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  copyright = \markup { \abs-fontsize #8 { \char ##x00A9 "Creative Commons 3.0 License, for non-commercial use" } }
}

global= {
  \key d \major
  \time 4/4
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
}

\paper {
  #(set-paper-size "a5")
  top-margin = 0.1\mm
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
  system-system-spacing = #'((basic-distance . 0.5) (padding . 0.5))
}

printItalic = \with {
  \override LyricText.font-shape = #'italic
}

% Verse music
musicVerseSoprano = \relative c' {
  %{	01	%} d4 e fis fis |
  %{	02	%} g e b' a |
  %{	03	%} fis g a d |
  %{	04	%} cis b ais2 |
  %{	05	%} b4 cis d b |
  %{	06	%} b ais gis ais |
  %{	07	%} b a g fis |
  %{	08	%} e4. e8 fis2 |
  %{	09	%} a4 a b b |
  %{	10	%} cis4. cis8 d4 a |
  %{	11	%} g fis fis fis |
  %{	12	%} fis4. e8 a2 |
  %{	13	%} d,4 fis a a |
  %{	14	%} b cis d a |
  %{	15	%} a b g8 (fis) e4 |
  %{	16	%} fis e d2 \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  Christ my God, my faith dis -- cer -- ning,
  Pre -- sent here through heav -- en's bread,
  With my heart and mind a -- dor -- ing
  By your life my soul is fed.
  By your blood my sins are cov -- ered.
  By your grace I am re -- newed.
  In your Spi -- rit may I jour -- ney
  With your light and life im -- bued.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  Mag -- ni -- fy my soul, God's great -- ness
  Ev -- en in the day of wrath.
  Though great dark -- nes falls on na -- tions
  Christ our light re -- veals our path.
  Let the faith -- ful praise the bo -- dy
  And the blood of Christ our Lord
  Ho -- ly wis -- dom, Word e -- ter -- nal,
  Light and life by all a -- dored.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  Cal -- vary's sac -- ri -- fice and offer -- ing
  In the Chal -- ice and the host
  Here is mer -- cy like an o -- cean
  From our Lord in whom we boast.
  With great joy we share his bo -- dy
  Reve -- rent -- ly with hearts raised up.
  Pain or bless -- ing, joy -- or sor -- row,
  Lov -- ing -- ly we drink his cup.
}

verseFour = \lyricmode {
  \set stanza = #"4."
  We ad -- ore the Lord our bro -- ther
  In the sac -- ra -- ment of life
  Cher -- ish -- ing his ve -- ry pres -- ence
  Bring -- ing peace to end all strife.
  May we, fed by Christ's own bo -- dy,
  Serve and see God's king -- dom come,
  And with all saints praise the Spi -- rit
  With the Fa -- ther and the Son.
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

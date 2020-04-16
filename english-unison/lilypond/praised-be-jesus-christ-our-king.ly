\version "2.18.2"

\header {
  title = "Praised Be Jesus Christ, Our King"
  composer = "Fr. P. Brennan, C.SS.R"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

global= {
  \key d \major
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
musicVerseSoprano = \relative c' {
  %{	01	%} fis4. fis8 g4 fis |
  %{	02	%} e4. b'8 b2 |
  %{	03	%} a4 g fis d |
  %{	04	%} fis4. e8 e2 |
  %{	05	%} fis4. fis8 g4 fis |
  %{	06	%} e4. b'8 b2 |
  %{	07	%} a4 d, e fis |
  %{	08	%} e4. d8 d2 |
  %{	09	%} a'4. a8 d4 cis |
  %{	10	%} cis4. b8 b2 |
  %{	11	%} b4. b8 e4 cis |
  %{	12	%} b4. a8 a2 |
  %{	13	%} d4. cis8 b4 b |
  %{	14	%} e4. d8 cis2 |
  %{	15	%} a4. a8 b4 d |
  %{	16	%} d cis d2 \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  Hail, Re -- deem -- er, King di -- vine! Priest and lamb, the throne is thine,
  King, whose reign shall en -- ver cease, Prince of eve -- er -- last -- ing peace!
  An -- gels, saints and na -- tions sing:
  ''Praised be Je -- sus Christ, our King;
  Lord of life, earth, sky and sea,
  King of love on Cal -- va -- ry.''
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  King, whose name cre -- a -- tion thrills, rule our minds, our hearts, our wills,
  Till in peace each na -- tion rings, with thy prais -- es King of kings!
  An -- gels, saints and na -- tions sing:
  ''Praised be Je -- sus Christ, our King;
  Lord of life, earth, sky and sea,
  King of love on Cal -- va -- ry.''
}

verseThree = \lyricmode {
  \set stanza = #"3."
  King most ho -- ly, King of truth, guide the low -- ly,
  guide the youth; Christ, Thou King of glo -- ry bright,
  be to us e -- ter -- nal light.
  An -- gels, saints and na -- tions sing:
  ''Praised be Je -- sus Christ, our King;
  Lord of life, earth, sky and sea,
  King of love on Cal -- va -- ry.''
}

verseFour = \lyricmode {
  \set stanza = #"4."
  Crim -- son streams, O King of grace, drenched thy thorn crowned head and face,
  flood of love's re -- deem -- ing tide tore thy hands,
  thy feet, thy side.
  Sing all tongues, let none be dumb:
  ''Sac -- red heart, thy king -- dom come!''
  To the King of a -- ges then, ho -- nour, glo -- ry, love! A -- men.
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

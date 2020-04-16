\version "2.18.2"

\header {
  title = "Author Of Creation's Stody"
  composer = "Vincent Uher"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  copyright = \markup { \abs-fontsize #8 { \char ##x00A9 "Creative Commons 3.0 License, for non-commercial use" } }
}

global= {
  \key f \minor
  \time 4/4
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
  system-system-spacing = #'((basic-distance . 3) (padding . 3))
}

printItalic = \with {
  \override LyricText.font-shape = #'italic
}

% Verse music
musicVerseSoprano = \relative c'' {
  %{	01	%} aes4. aes8 aes4 g |
  %{	02	%} f ees des c |
  %{	03	%} bes4. bes8 c4 des |
  %{	04	%} ees f bes,2 |
  %{	05	%} bes4 bes c c |
  %{	06	%} f ees ees des |
  %{	07	%} c des ees f |
  %{	08	%} ges aes f2 |
  %{	09	%} c'4 des bes2 |
  %{	10	%} c4 bes4 aes2 |
  %{	11	%} aes2. c,4 |
  %{	12	%} des (ees) f ges ( |
  %{	13	%} f) ees des2 \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  Auth -- or of cre -- a -- tion's sto -- ry, God and Fath -- er of the Light,
  lov -- ing us You sent your Ser -- vant Christ to save us from death's night.
  God the Son, He has won life e -- ter -- nal for each one.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  Per -- fect trust and be -- ne -- dic -- tion are the gifts our Christ be -- stows.
  Each new mem -- ber of his Bo -- dy feeds on Him and by faith grows;
  Love out -- poured, Christ a -- dored, Je -- sus pre -- sent, friend and Lord.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  Fire of hope, great Ho -- ly Spi -- rit; Search -- ing round with kind -- ling spark;
  Find with -- in my soul a dwel -- ling; Light your flame and seal God's mark,
  cross and call, Christ my all, signed by these I shall not fall.
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
    >>
}

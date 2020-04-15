\version "2.18.2"

\header {
  title = "Draw Near And Take The Body Of Your Lord"
  composer = "Sancti, Venite, Christe Corpus Sumite"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

global= {
  \key ees \major
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
  system-system-spacing = #'((basic-distance . 3) (padding . 5))
}

printItalic = \with {
  \override LyricText.font-shape = #'italic
}

% Verse music
musicVerseSoprano = \relative c' {
  %{	01	%} g'2 f4 ees |
  %{	02	%} aes2 g |
  %{	03	%} f4 g ees f |
  %{	04	%} d1 |
  %{	05	%} ees2 aes4 g |
  %{	06	%} f c' bes ees, |
  %{	07	%} g2. f4 |
  %{	08	%} ees1 \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  Draw near and take the bod  -- y of the Lord,
  And drink the ho -- ly blood for you out -- poured;
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  He who his saints in this world rules and shields,
  To all be -- liev -- ers life e -- ter -- nal yields;
}

verseThree = \lyricmode {
  \set stanza = #"3."
  Come for -- ward the with faith -- ful hearts sin -- cere,
  And take the pledg -- es of sal -- va -- tion here.
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

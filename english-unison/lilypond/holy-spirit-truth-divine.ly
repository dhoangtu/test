\version "2.18.2"

\header {
  title = "Holy Spirit, Truth Divine"
  composer = "Lew Trendchard, arr. Noel Jones, Samuel Longfellow"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  copyright = \markup { \abs-fontsize #8 { \char ##x00A9 "Creative Commons Attribution 3.0 License by Noel Jones, for non-commercial use." } }
}

global= {
  \key bes \major
  \time 4/4
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
  \override Lyrics.LyricSpace.minimum-distance = #3.0
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
  system-system-spacing = #'((basic-distance . 3) (padding . 5))
}

printItalic = \with {
  \override LyricText.font-shape = #'italic
}

% Verse music
musicVerseSoprano = \relative c' {
  %{	01	%} d4 ees8 (d) c4 d |
  %{	02	%} bes c d2 |
  %{	03	%} g4 g8 (a) bes4 a |
  %{	04	%} g fis g2 |
  %{	05	%} g4 a8 (bes) d4 c |
  %{	06	%} bes a g2 |
  %{	07	%} d4 ees8 (d) f4 ees |
  %{	08	%} d c d2 \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  Ho -- ly Spi -- rit, truth di -- vine,
  dawn up -- on this soul of mine;
  Word of God and in -- ward light,
  wake my spi -- rit, clear my sight.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  Ho -- ly Spi -- rit, love di -- vine,
  glow with -- in this heart of mine;
  Kin -- dle eve -- ery high de -- sire;
  Per -- ish self in thy pure fire.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  Ho -- ly Spi -- rit, power di -- vine,
  fill and nerve this will of mine;
  grant that I may strong -- ly live,
  brave -- ly bear, and nob -- ly strive.
}

verseFour = \lyricmode {
  \set stanza = #"4."
  Ho -- ly Spi -- rit, right di -- vine,
  King with -- in my con -- science reign;
  be my Lord, and I shall be
  firm -- ly bound, for -- ev -- er free.
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

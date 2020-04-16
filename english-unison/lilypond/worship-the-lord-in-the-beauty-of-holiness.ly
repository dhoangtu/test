\version "2.18.2"

\header {
  title = "Worship The Lord In The Beauty Of Holiness"
  composer = "John Samuel Bewly Monsell"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

global= {
  \key des \major
  \time 3/4
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
  system-system-spacing = #'((basic-distance . 3) (padding . 3))
}

printItalic = \with {
  \override LyricText.font-shape = #'italic
}

% Verse music
musicVerseSoprano = \relative c' {
  %{	01	%} des4 des ees |
  %{	02	%} f f aes |
  %{	03	%} ges4. f8 ees4 |
  %{	04	%} f4. f8 f4 |
  %{	05	%} ees des ees |
  %{	06	%} f g! aes |
  %{	07	%} aes bes g! |
  %{	08	%} aes2. |
  %{	09	%} des4 des ces |
  %{	10	%} bes bes aes |
  %{	11	%} ges aes f |
  %{	12	%} ees4. ees8 ees4 |
  %{	13	%} aes aes f |
  %{	14	%} bes c des |
  %{	15	%} des ees c |
  %{	16	%} des2. \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  Wor -- ship the Lord in the beau -- ty of hol -- i -- ness
  Bow down be -- fore him, his glo -- ry pro -- claim
  Gold of o -- be -- dience and in -- cense of low -- ly -- ness
  Kneel and a -- dore him, the Lord is his name.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  Low at his feet lay thy bur -- den of care -- ful -- ness
  High on his heart He will bear it for thee
  Com -- fort thy sor -- rows and ans -- wer thy prayer -- ful -- ness
  Guid -- ing thy steps as may best for thee be.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  Fear not to en -- ter his courts in the slen -- der -- ness
  Of the poor wealth thou wouldst rec -- kon as thine
  Truth in its beau -- ty, and love in its ten -- der -- ness
  These are the of -- f'rings to lay on his shrine.
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

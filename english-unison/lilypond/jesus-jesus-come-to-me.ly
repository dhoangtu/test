\version "2.18.2"

\header {
  title = "Jesus, Jesus, Come To Me"
  composer = "Fellow"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

global= {
  \key d \major
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
  system-system-spacing = #'((basic-distance . 3) (padding . 3))
}

printItalic = \with {
  \override LyricText.font-shape = #'italic
}

% Verse music
musicVerseSoprano = \relative c' {
  %{	01	%} fis4 fis e fis |
  %{	02	%} a4. g8 g2 |
  %{	03	%} g4 g fis g |
  %{	04	%} b4. a8 a2 |
  %{	05	%} d4 d a b |
  %{	06	%} a4. g8 fis2 |
  %{	07	%} b4 b a fis |
  %{	08	%} e4. d8 d2 \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  Je -- sus, Je -- sus come to me;
  Oh, how much I long for Thee!
  Come, Thou of all friends the best;
  Come and dwell with -- in my breast.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  Emp -- ty is all world -- ly joy,
  Ev -- er mixed with some al -- loy;
  Give me my true give me true
  Sov - 'reign Good; Je -- sus, thine.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  On the cross three hours for me,
  Thou didst hang in ag -- o -- ny;
  I my heart to Thee re -- sign;
  Oh what rap -- ture to be thine.
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

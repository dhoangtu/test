\version "2.18.2"

\header {
  title = "Glory Be To Jesus"
  composer = "Viva! Viva! Gesu"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

global= {
  \key f \major
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
musicVerseSoprano = \relative c'' {
  %{	01	%} a4 a g g |
  %{	02	%} f2 e |
  %{	03	%} f4 f g g |
  %{	04	%} a1 |
  %{	05	%} c4 c bes bes |
  %{	06	%} a2 g |
  %{	07	%} a4 a g g |
  %{	08	%} f1 \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  Glo -- ry be to Je -- sus,
  Who in bit -- ter pains
  Poured for me the life -- blood
  From his sac -- red veins.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  Grace and life e -- ter -- nal
  In that blood I find;
  Blest be his com -- pas -- sion
  In -- fi -- nite -- ly kind.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  Blest through end -- less ag -- es
  Be the pre -- cious stram
  Which from end -- less sor -- row
  Did the world re -- deem.
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

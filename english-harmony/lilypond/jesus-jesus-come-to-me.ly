\version "2.18.2"

\header {
  title = "Jesus, Jesus Come To Me"
  composer = "Tr. Sister Jeanne Marie, Traditional Melody"
  tagline = ##f
}

global= {
  \key d \major
  \time 4/4
  \tempo "Slowly"
  \dynamicUp
}

\paper {
  #(set-paper-size "a4")
  top-margin = 15\mm
  bottom-margin = 15\mm
  left-margin = 20\mm
  right-margin = 20\mm
  indent = #0
  #(define fonts
	 (make-pango-font-tree "Liberation Serif"
	 		       "Liberation Serif"
			       "Liberation Serif"
			       (/ 20 20)))
}

printItalic = \with {
  \override LyricText.font-shape = #'italic
}

% Soprano verse music
musicVerseSoprano = \relative c' {
  %{ 01 %} fis4 \p \< fis e fis \! |
  %{ 02 %} a4.-^ \> g8 g2 \! |
  %{ 03 %} g4 \< g fis g \! |
  %{ 04 %} b4.-^ \> a8 a2 \! |
  %{ 05 %} d4 \< d a b \! |
  %{ 06 %} b4.-^ \> a8 a2 \! |
  %{ 07 %} b4 b a \> fis |
  %{ 08 %} e4.-^ d8 d2 \! \bar "|."
}

% Basso verse music
musicVerseBasso = \relative c' {
  %{ 01 %} d4 d cis d |
  %{ 02 %} fis4. e8 e2 |
  %{ 03 %} cis4 cis d e |
  %{ 04 %} g4. fis8 fis2 |
  %{ 05 %} fis4 fis fis eis |
  %{ 06 %} eis4. fis8 fis2 |
  %{ 07 %} d4 d fis d |
  %{ 08 %} cis4. d8 d2 \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  Je -- sus, Je -- sus, come to me, all my long -- ing is for Thee,
  Of all friends the best Thou art, make of me Thy coun -- ter -- part.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  Je - sus, I live for Thee, Je - sus, I die for Thee,
  I _ be - long to Thee, For - e'er in life and death.
}

% Layout
\score {
    \new ChoirStaff <<
      \new Staff <<
        \clef "treble"
        \new Voice = "sopranos" { \voiceOne \global \stemUp \slurUp \musicVerseSoprano }
        \new Voice = "basso" { \voiceTwo \global \stemDown \slurDown \musicVerseBasso }
      >>
      \new Lyrics \lyricsto sopranos \verseOne
      \new Lyrics \printItalic \lyricsto sopranos \verseTwo
    >>
}

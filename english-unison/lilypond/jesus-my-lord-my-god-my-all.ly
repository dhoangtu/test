\version "2.18.2"

\header {
  title = "Jesus, My Lord, My God, My All"
  composer = "Fr. Frederick Faber"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

globalSettings = {
  \set Score.barNumberVisibility = #all-bar-numbers-visible
  \key d \major
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

% Verse music
musicVerseSoprano = \relative c'' {
  %{	01	%} a4 fis d |
  %{	02	%} d (cis) d |
  %{	03	%} e (a) g |
  %{	04	%} g (fis2) |
  %{	05	%} fis4 e d |
  %{	06	%} g2 e4 |
  %{	07	%} d2 cis4 |
  %{	08	%} d2. |
  %{	09	%} a'4 fis d |
  %{	10	%} d (cis) d |
  %{	11	%} e (a) g |
  %{	12	%} g (fis2) |
  %{	13	%} fis4 e d |
  %{	14	%} g2 e4 |
  %{	15	%} d2 cis4 |
  %{	16	%} d2. \bar "||"
}

% Chorus music
musicChorusSoprano = \relative c'' {
  \set Score.currentBarNumber = #17
  %{	17	%} a4 a a |
  %{	18	%} b2 b4 |
  %{	19	%} cis2 cis4 |
  %{	20	%} d2. |
  %{	21	%} a4 g fis |
  %{	22	%} b2 g4 |
  %{	23	%} e (a) g |
  %{	24	%} g (fis2) |
  %{	25	%} fis4 e d |
  %{	26	%} g2 e4 |
  %{	27	%} d2 cis4 |
  %{	28	%} d2. \bar "|."
}

% Verse lyrics
lyricVerseOne = \lyricmode {
  \set stanza = #"1."
  Je -- sus, my Lord, my God, my all.
  How can I love Thee as I ought?
  And how re -- vere this wound -- rous gift,
  So far sur -- pass -- ing hope or thought?
}

lyricVerseTwo = \lyricmode {
  \set stanza = #"2."
  Had I but Ma -- ry's sin -- less heart,
  To love Thee with, my dear -- est King;
  O with what bursts of fer -- vent praise,
  Thy good -- ness, Je -- sus, would I sing!
}

lyricVerseThree = \lyricmode {
  \set stanza = #"3."
  O, see, with -- in a crea -- ture's hand,
  The vast Cre -- a -- tor deigns to be,
  Re -- pos -- ing in -- fant -- like, as though
  On Jo -- seph's arm, on Ma -- ry's knee.
}

lyricVerseFour = \lyricmode {
  \set stanza = #"4."
  Thy bod -- y, soul, and God -- head, all,
  O mys -- ter -- y of love -- di -- vine!
  I can -- not com -- pass all I have,
  For all though hast and art are mine.
}

lyricVerseFive = \lyricmode {
  \set stanza = #"5."
  Sound, sound his prais -- es high -- er still,
  And come ye an -- gels to our aid;
  'Tis God, 'tis God, the ve -- ry God,
  Whose pow'r both man and an -- gels made.
}

% Chorus lyrics
lyricChorus = \lyricmode {
  Sweet sa -- cra -- ment, we Thee a -- dore!
  Oh, make us love Thee more and more.
  Oh, make us love Thee more and more.
}

% Layout
\score {
    \new ChoirStaff <<
      \new Staff <<
        \clef "treble"
        \new Voice = "soprano" {
          \voiceOne \globalSettings \stemUp \slurUp \musicVerseSoprano
        }
      >>
      \new Lyrics \lyricsto soprano \lyricVerseOne
      \new Lyrics \printItalic \lyricsto soprano \lyricVerseTwo
      \new Lyrics \lyricsto soprano \lyricVerseThree
      \new Lyrics \printItalic \lyricsto soprano \lyricVerseFour
      \new Lyrics \lyricsto soprano \lyricVerseFive
    >>
}

\score {
    \new ChoirStaff <<
      \new Staff <<
        \clef "treble"
        \override Staff.TimeSignature #'stencil = ##f
        \new Voice = "soprano" {
          \globalSettings \stemUp \slurUp \musicChorusSoprano
        }
      >>
      \new Lyrics \lyricsto soprano \lyricChorus
    >>
}

\version "2.18.2"

\header {
  title = "Angels From The Realms Of Glory"
  composer = "Henry Thomas Smart, James Montgomery"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

globalSettings = {
  \set Score.barNumberVisibility = #all-bar-numbers-visible
  \key bes \major
  \time 4/4
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
}

verseSettings = {
  \phrasingSlurDashed
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
}

printItalic = \with {
  \override LyricText.font-shape = #'italic
}

% Verse music
musicVerseSoprano = \relative c' {
  %{	01	%} f4 d bes' f |
  %{	02	%} d'4. c8 bes4 f |
  %{	03	%} g g f bes |
  %{	04	%} f ees d2 |
  %{	05	%} f4 d bes' f |
  %{	06	%} d'4. c8 bes4 a |
  %{	07	%} bes a g a8 bes |
  %{	08	%} a4 g f2 |
}

% Chorus music
musicChorusSoprano = \relative c' {
  \set Score.currentBarNumber = #9
  %{	09	%} c'4. c8 a4 f |
  %{	10	%} d'4. c8 bes4 g |
  %{	11	%} ees' d c bes |
  %{	12	%} bes a bes2 \bar "|."
}

% Verse lyrics
lyricVerseOne = \lyricmode {
  \set stanza = #"1."
  An -- gels from the realms of glo -- ry, wing your flight o'er all the earth;
  Ye who sang cre -- a -- tion's sto -- ry now pro -- claim Mes -- si -- ah's birth.
}

lyricVerseTwo = \lyricmode {
  \set stanza = #"2."
  She -- pherds, in the field a -- bid -- ing, watch -- ing o'er your flocks by night,
  God with us is now re -- sid -- ing; Yon -- der shines the in -- fant light:
}

lyricVerseThree = \lyricmode {
  \set stanza = #"3."
  Sag -- es, leave your con -- tem -- pla -- tions, bright -- er vi -- sions beam a -- far;
  Seek the great de -- sire of na -- tions; Ye have seen His na -- tal star.
}

lyricVerseFour = \lyricmode {
  \set stanza = #"4."
  Saints, be -- fore the al -- ter bend -- ing, watch -- ing long in hope and fear;
  Sud -- den -- ly the Lord, de -- scend -- ing, in His tem -- ple shall ap -- pear.
}

lyricVerseFive = \lyricmode {
  \set stanza = #"5."
  Sin -- ners, wrung with true re -- pen -- tance, Dommed for guilt to end -- less pains,
  Jus -- tice now re -- vokes the sen -- tence, Mer -- cy calls you; break your chains.
}

lyricVerseSix = \lyricmode {
  \set stanza = #"6."
  Though and In -- fant now we view Him, He sahll fill His Fa -- ther's throne,
  gath -- er all the na -- tions to Him; Eve -- ry knee shall then bow down:
}

lyricVerseSeven = \lyricmode {
  \set stanza = #"7."
  All cre -- a -- tion, join in prais -- ing God, the Fa -- ther, Spir -- it, Son,
  Ev -- er -- more your voic -- es rais -- ing to th'e -- ter -- nal Three in One.
}

% Chorus lyrics
lyricChorus = \lyricmode {
  Come and wor -- ship, come and wor -- ship, wor -- ship Christ, the new -- born King.
}

% Layout
\score {
    \new ChoirStaff <<
      \new Staff <<
        \clef "treble"
        \new Voice = "soprano" {
          \voiceOne \globalSettings \verseSettings \stemUp \slurUp \musicVerseSoprano
        }
      >>
      \new Lyrics \lyricsto soprano \lyricVerseOne
      \new Lyrics \printItalic \lyricsto soprano \lyricVerseTwo
      \new Lyrics \lyricsto soprano \lyricVerseThree
      \new Lyrics \printItalic \lyricsto soprano \lyricVerseFour
      \new Lyrics \lyricsto soprano \lyricVerseFive
      \new Lyrics \printItalic \lyricsto soprano \lyricVerseSix
      \new Lyrics \lyricsto soprano \lyricVerseSeven
    >>
}

\score {
    \new ChoirStaff <<
      \new Staff <<
        \clef "treble"
        \new Voice = "soprano" {
          \globalSettings \stemUp \slurUp \musicChorusSoprano
        }
      >>
      \new Lyrics \lyricsto soprano \lyricChorus
    >>
}

\version "2.18.2"

\header {
  title = "See, Amid The Winter's Snow"
  composer = "Edward Caswell"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

globalSettings = {
  \set Score.barNumberVisibility = #all-bar-numbers-visible
  \key g \major
  \time 4/4
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
  \override Lyrics.LyricSpace.minimum-distance = #3.0
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
  %{	01	%} g4. a8 g4 fis |
  %{	02	%} e4. d8 d2 |
  %{	03	%} g4 a c b |
  %{	04	%} b4. a8 a2 |
  %{	05	%} g4. a8 g4 fis |
  %{	06	%} e4. d8 d2 |
  %{	07	%} g4 a b c |
  %{	08	%} a4. g8 g2 \bar "||"
}

% Chorus music
musicChorusSoprano = \relative c'' {
  \set Score.currentBarNumber = #9
  %{	09	%} d4. d8 c4 b |
  %{	10	%} a g fis2 |
  %{	11	%} d'4. d8 c4 b |
  %{	12	%} a g fis2 |
  %{	13	%} g4. a8 g4 fis |
  %{	14	%} e4. d8 d2 |
  %{	15	%} d'4. b8 g4 c |
  %{	16	%} b a g2 \bar "|."
}

% Verse lyrics
lyricVerseOne = \lyricmode {
  \set stanza = #"1."
  See a -- mid the win -- ter's snow,
  Born for us on earth be -- low,
  See, the ten -- der lamb ap -- pears,
  Prom -- ised from e -- ter -- nal years.
}

lyricVerseTwo = \lyricmode {
  \set stanza = #"2."
  Lo, with -- in a man -- ger lies
  He who built the star -- ry skies;
  He who, throned in height sub -- lime,
  Sits a -- mong the Cher -- u -- bim.
}

lyricVerseThree = \lyricmode {
  \set stanza = #"3."
  ''As we watched at dead of night,
  Lo, we saw a wond -- rous light:
  An -- gels sing -- ing 'Peace on earth'
  Told us of the Sav -- iour's birth.''
}

lyricVerseFour = \lyricmode {
  \set stanza = #"4."
  Teach, O teach us, Ho -- ly Child,
  By thy face so meek and mild,
  Teach us to re -- sem -- ble Thee,
  In thy sweet hu -- mi -- li -- ty.
}

% Chorus lyrics
lyricChorus = \lyricmode {
  Hail that ev -- er bles -- sed morn, hail re -- demp -- tion's hap -- py dawn,
  sing through all Je -- ru -- sa -- lem:
  Christ is born in Beth -- le -- hem.
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

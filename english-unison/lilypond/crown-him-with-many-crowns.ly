\version "2.18.2"

\header {
  title = "Crown Him With Many Crowns"
  composer = "Matthew Bridges"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

global= {
  \key ees \major
  \time 4/4
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
  \override Lyrics.LyricSpace.minimum-distance = #2.0
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
  system-system-spacing = #'((basic-distance . 3) (padding . 3))
}

printItalic = \with {
  \override LyricText.font-shape = #'italic
}

% Verse music
musicVerseSoprano = \transpose d ees {
\relative c' {
  %{ 01 %} d4 d8 d fis4 fis |
  %{ 02 %} b2. b4 |
  %{ 03 %} a d, g fis |
  %{ 04 %} e2. e4 |
  %{ 05 %} fis a b a |
  %{ 06 %} gis fis8 (e) a4 d |
  %{ 07 %} cis d b b |
  %{ 08 %} a2. a4 |
  %{ 09 %} a fis e d |
  %{ 10 %} b'2. b4 |
  %{ 11 %} b gis fis e |
  %{ 12 %} cis'2. cis4 |
  %{ 13 %} d4. cis8 b4 a |
  %{ 14 %} g e fis a |
  %{ 15 %} g fis e e |
  %{ 16 %} d1 \bar "|."
}
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  Crown Himw ith ma -- ny crowns, the Lamb up -- on his throne.
  Hark! How the heaven -- ly an -- them drowns all mu -- sic but its own.
  A -- wake, my soul, and sing of Him who died for thee,
  And hail Him as thy match -- les King through all e -- ter -- ni -- ty.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  Crown Him the Lord of love, be -- hold his hands and side,
  Those wounds, yet vi -- si -- ble a -- bove in beau -- ty glo -- ri -- fied.
  No an -- gel in the sky can ful -- ly bear that sight,
  But down -- ward -- bends his burn -- ing eye at mys -- ter -- ies so bright.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  Crown Him the Lord of heaven, en -- throned in worlds a -- bove,
  Crown Him the King to whom is given the won -- drous name of love.
  Crown Him with ma -- ny crowns, as thrones be -- fore Him fall;
  Crown Him, ye kings, with ma -- ny crowns, for He is King of all.
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

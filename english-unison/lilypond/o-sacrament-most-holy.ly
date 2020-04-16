\version "2.18.2"

\header {
  title = "O Sacrament Most Holy"
  composer = "Traditional"
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
  \mark "Sing 3 times"
  \partial 4 bes4 |
  g'4. f8 g4 aes |
  bes4. (c8) bes4 ees |
  c4. c8 bes4 g |
  f2. bes,4 |
  g'4. f8 g4 aes |
  bes4. (c8) bes4 aes |
  g g f f |
  ees2. \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  O Sac -- ra -- ment most Ho -- ly,
  O Sac -- ra -- ment Di -- vine,
  All praise and all thanks -- giv -- ing
  Be ev -- ery mo -- ment thine.
}

% Layout
\score {
    \new ChoirStaff <<
      \new Staff <<
        \clef "treble"
        \new Voice = "sopranos" { \global \stemUp \slurUp \musicVerseSoprano }
      >>
      \new Lyrics \lyricsto sopranos \verseOne
    >>
}

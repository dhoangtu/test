\version "2.18.2"

\header {
  title = "The Eyes Of All Hope In The Lord"
  composer = "Kathleen Pluth, Colin Brumby"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  copyright = \markup { \abs-fontsize #8 { \char ##x00A9 "Creative Commons Attribution 3.0 License by Colin Brumby & Kathleen Pluth" } }
}

global= {
  \key c \major
  \time 6/8
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
}

printItalic = \with {
  \override LyricText.font-shape = #'italic
}

% Verse music
musicVerseSoprano = \relative c'' {
                    \partial 8 g8 |
  %{	01	%} g4 c8 a4 f8 |
  %{	02	%} d4 g8 e4 d8 |
  %{	03	%} e4 a8 f4 e8 |
  %{	04	%} d4 a'8 g4 g8 |
  %{	05	%} g4 e'8 d4 c8 |
  %{	06	%} b4 a8 g4 gis8 |
  %{	07	%} a4 e8 f4 a8 |
  %{	08	%} g8 (a) b c4 \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  The eyes of all hope in the Lord.
  He gives them food in prop -- er time.
  His op -- en hands shall grant them more than an -- y asks or has in mind.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  He needs no store -- rooms full of flood.
  Five loaves of bread, some fish,
  pro -- vide en -- ough to feed a mul -- ti -- tude up on a lone -- ly mount -- ain -- side.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  The hun -- gry eat their fill of bread:
  five thous -- and peo -- ple sat -- is -- fied.
  And when the crowd has amp -- ly fed, twelve bas -- kets -- ful are set a -- side.
}

verseFour = \lyricmode {
  \set stanza = #"4."
  The Lord is just in all his words:
  com -- pas -- sion -- ate in all his deeds.
  The Lord's al -- might -- y hand sup -- ports the fain -- ting heart,
  the tremb -- ling knee.
}

verseFive = \lyricmode {
  \set stanza = #"5."
  And so let faith -- ful Christ -- ians plead an end to hun -- gers,
  great and small.
  The one who knows their ev -- ery need will not re -- fuse to give them all.
}

verseSix = \lyricmode {
  \set stanza = #"6."
  And may our hearts be pu -- ri -- fied in this great Eu -- cha -- ris -- tic feast
  to trust in him whose care a -- bides:
  our Sac -- ra -- ment, our Life, our Priest.
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
      \new Lyrics \lyricsto sopranos \verseFour
      \new Lyrics \printItalic \lyricsto sopranos \verseFive
      \new Lyrics \lyricsto sopranos \verseSix
    >>
}

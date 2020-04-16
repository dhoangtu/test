\version "2.18.2"

\header {
  title = "Beneath The Cross Of Jesus"
  composer = "St. Christopher, Frederick C. Maker, Elizabeth C. Clephane"
  tagline = ##f
  source="https://musicasacra.com/music/english-hymns-in-the-commons/"
  license="thanhcalilypond.net - License CC0 1.0"
}

global= {
  \key c \major
  \time 4/4
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
}

\paper {
  #(set-paper-size "a5")
  top-margin = 5\mm
  bottom-margin = 10\mm
  left-margin = 10\mm
  right-margin = 10\mm
  indent = #0
  #(define fonts
	 (make-pango-font-tree "Liberation Serif"
	 		       "Liberation Serif"
			       "Liberation Serif"
			       (/ 20 20)))
             
  page-count = #1
}

printItalic = \with {
  \override LyricText.font-shape = #'italic
}

% Verse music
musicVerseSoprano = \relative c'' {
  \partial 4 g4 |
  g4. g8 f4 a |
  g2 e4 e |
  d4. e8 f4 f |
  e2. e4 |
  c'4. c8 c4 b |
  a g f e |
  d4. d8 dis4 dis |
  e2. e4 |
  e4. d8 c4 d |
  e f g g |
  a4. a8 a4 e |
  f2. f8 f |
  b4. a8 g4 f |
  e e g f8 f8 |
  e4. c8 e4 d |
  c2. \bar "|."
}

% Verse lyrics
verseOne = \lyricmode {
  \set stanza = #"1."
  Be -- neath the cross of Je -- sus
  I fain would take my stand,
  The shad -- ow of a might -- y rock
  With -- in a wear -- y land,
  A home with -- in a wil -- der -- ness,
  A rest up -- on the way,
  From the burn -- ing of the noon -- tide heat
  And the bur -- den of the day.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  O safe and hap -- py shel -- ter!
  O ref -- uge tried and sweet!
  O tryst -- ing place where heav -- en's love
  And beav -- en's jus -- tice meet!
  As to the_ex -- alt -- ed pa -- tri -- arch
  That won -- drous dream was giv'n,
  So _ seems my Sav -- vior's cross to me
  A _ lad -- der up to heaven.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  There lies be -- neath its shad -- ow,
  But on the far -- ther side,
  The dark -- ness of an o -- pen grace
  That gapes both deep and wide;
  And there be -- tween us stands the cross,
  Two arms out -- stretched to save,
  Like a watch - man to guard the way
  From _ that e -- tern -- al grave.
}

verseFour = \lyricmode {
  \set stanza = #"4."
  U -- pon that cross of Je -- sus
  Mine eyes at times can see
  The ver -- y dy -- ing form of one
  Who suf -- fered there for me;
  And from my strick -- en heart, with tears;
  Two won -- ders I con -- fess:
  The _ won -- ders of re -- deem -- ing love,
  And _ my own worth -- less -- ness.
}

verseFive = \lyricmode {
  \set stanza = #"5."
  I take, O cross, thy shad -- ow
  For my a -- bid -- ing place;
  I ask no oth -- er sun -- shine than
  The sun -- shine of his face;
  Con -- tent to let the world go by,
  To know no gain nor loss,
  My _ sin -- ful self my on -- ly shame,
  My _ glo -- ry all: the cross.
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
      \new Lyrics \printItalic \lyricsto sopranos \verseFour
      \new Lyrics \lyricsto sopranos \verseFive
    >>
}

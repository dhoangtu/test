\version "2.18.2"

\header {
  title = "O Come, O Come, Emmanuel"
  composer = "John Mason Neale (1818–1866), 15th Century French"
  tagline = ##f
  copyright = "Public Domain"
}

global= {
  % \override Score.BarNumber.break-visibility = #all-visible
  \key e \minor
  \time 4/4
}

\paper {
  #(set-paper-size "a4")
  top-margin = 15\mm
  bottom-marign = 15\mm
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
  \partial 4 e4 |
  %{ 01 %} g b b b |
  %{ 02 %} a (c b) a |
  %{ 03 %} g2. a4 |
  %{ 04 %} b g e g |
  %{ 05 %} a (fis e) d |
  %{ 06 %} e2. a4 |
  %{ 07 %} a e e fis |
  %{ 08 %} g2 (fis4) e |
  %{ 09 %} d2. g4 |
  %{ 10 %} a b b b |
  %{ 11 %} a (c b) a | g2. \bar "||"
}

% Alto verse music
musicVerseAlto = \relative c' {
  \partial 4 b4 |
  %{ 01 %} e b d g |
  %{ 02 %} g2. fis4 |
  %{ 03 %} g2. d4 |
  %{ 04 %} d d c b |
  %{ 05 %} c2 (b4) b |
  %{ 06 %} b2. e8 d |
  %{ 07 %} c4 c e dis |
  %{ 08 %} e2 (d4) cis |
  %{ 09 %} d2. b4 |
  %{ 10 %} d d d g |
  %{ 11 %} g2. fis4 | g2. \bar "||"
}

% Tenor verse music
musicVerseTenor = \relative c' {
  \partial 4 g4 |
  %{ 01 %} b fis g d' |
  %{ 02 %} e2 (d4) c |
  %{ 03 %} b2. fis4 |
  %{ 04 %} g g g g |
  %{ 05 %} e (a g) fis |
  %{ 06 %} g2. a4 |
  %{ 07 %} a a b a |
  %{ 08 %} b (a a) g |
  %{ 09 %} fis2. g4 |
  %{ 10 %} fis fis g d' |
  %{ 11 %} e2 (d4) c | b2. \bar "||"
}

% Basso verse music
musicVerseBasso = \relative c {
  \partial 4 e4 |
  %{ 01 %} e d b g |
  %{ 02 %} c (a b) d |
  %{ 03 %} e2. d4 |
  %{ 04 %} g, b c e |
  %{ 05 %} a,2 (b4) b |
  %{ 06 %} e2. c8 b |
  %{ 07 %} a4 a' g fis |
  %{ 08 %} e (cis d) a |
  %{ 09 %} d2. e4 |
  %{ 10 %} d b g b |
  %{ 11 %} c (a b) d | g,2. \bar "||"
}

% Soprano chorus music
musicChorusSoprano = \relative c' {
  \set Score.currentBarNumber = #12
  \partial 4 d'4 |
  %{ 12 %} d2. b4 |
  %{ 13 %} b2. b4 |
  %{ 14 %} a (c b) a |
  %{ 15 %} g2. a4 |
  %{ 16 %} b g e g |
  %{ 17 %} a (fis e) d | g2. \bar "|."
}

% Alto chorus music
musicChorusAlto = \relative c' {
  \partial 4 g'4 |
  %{ 12 %} fis2. g4 |
  %{ 13 %} fis2. g4 |
  %{ 14 %} g2. fis4 |
  %{ 15 %} g2. fis4 |
  %{ 16 %} g d e e |
  %{ 17 %} e (c b) b | b2. \bar "|."
}

% Tenor chorus music
musicChorusTenor = \relative c' {
  \partial 4 b4 |
  %{ 12 %} a2. e'4 |
  %{ 13 %} d2. d4 |
  %{ 14 %} e2 (d4) c |
  %{ 15 %} b2. d4 |
  %{ 16 %} d d c b |
  %{ 17 %} a2 (g4) fis | g2. \bar "|."
}

% Basso chorus music
musicChorusBasso = \relative c' {
  \partial 4 g4 |
  %{ 12 %} d2. e4 |
  %{ 13 %} b2. g4 |
  %{ 14 %} c (a b) d |
  %{ 15 %} e2. d4 |
  %{ 16 %} g b, c e |
  %{ 17 %} c (a b) b | e2. \bar "|."
}

% 10. Verse lyrics
lyricVerseOne = \lyricmode {
  \set stanza = #"1."
  O come, O come, Em  -- man -- u -- el,
  And ran -- som cap -- tive Is -- ra -- el,
  That mourns in lone -- ly ex -- ile here
  Un -- til the Son of God ap -- pear.
}

lyricVerseTwo = \lyricmode {
  \set stanza = #"2."
  O come, O come, Thou Lord of might
  Who to Thy tribes, on Si -- nai's height
  In an -- cient times didst give the law
  In cloud, and maj -- es -- ty and awe.
}

lyricVerseThree = \lyricmode {
  \set stanza = #"3."
  O come, Thou Rod of Jes -- se, free
  Thine own from Sa -- tan's ty -- ran -- ny
  From depths of hell Thy peo -- ple save
  And give them vic -- t'ry o'er the grave.
}

lyricVerseFour = \lyricmode {
  \set stanza = #"4."
  O come, Thou Day -- spring, come and cheer
  Our spi -- rits by Thine ad -- vent here
  Dis -- perse the gloom -- y clouds of night
  And death's dark sha -- dows put to flight.
}

lyricVerseFive = \lyricmode {
  \set stanza = #"5."
  O come, Thou Key of Da -- vid, come
  And open wide our hea -- v'nly home
  Make safe the way that leads on high
  And close the path to mi -- ser -- y.
}

lyricVerseSix = \lyricmode {
  \set stanza = #"6."
  O come, Thou Wis -- dom from on high
  And or -- der all things, far and nigh
  To us the path of know -- ledge show
  And cause us in her ways to go.
}

lyricVerseSeven = \lyricmode {
  \set stanza = #"7."
  O come, de -- sire of na -- tions, bind
  In one the hearts of all mankind
  Bid Thou our sad di -- vi -- sions cease
  And be Thy -- self our King of peace.
}

% 11. Chorus lyrics
lyricChorus = \lyricmode {
  \set stanza = #"Refrain:"
  Re -- joice! Re -- joice! Em  -- man -- u -- el
  Shall come to thee, O Is -- ra -- el.
}

% 12. Layout
\score {
    \new ChoirStaff <<
      \new Staff <<
        \clef "treble"
        \new Voice = "sopranos" {
          \voiceOne \global \stemUp \slurUp \musicVerseSoprano
        }
        \new Voice = "alto" {
          \voiceTwo \global \stemDown \slurDown \musicVerseAlto
        }
      >>
      \new Lyrics \lyricsto sopranos \lyricVerseOne
      \new Lyrics \printItalic \lyricsto sopranos \lyricVerseTwo
      \new Lyrics \lyricsto sopranos \lyricVerseThree
      \new Lyrics \printItalic \lyricsto sopranos \lyricVerseFour
      \new Staff <<
        \clef "bass"
        \new Voice = "tenor" {
          \voiceOne \global \stemUp \slurUp \musicVerseTenor
        }
        \new Voice = "basso" {
          \voiceTwo \global \stemDown \slurDown \musicVerseBasso
        }
      >>
    >>
}

\score {
    \new ChoirStaff <<
      \new Staff <<
        \clef "treble"
        \new Voice = "sopranos" {
          \voiceOne \global \stemUp \slurUp \musicChorusSoprano
        }
        \new Voice = "alto" {
          \voiceTwo \global \stemDown \slurDown \musicChorusAlto
        }
      >>
      \new Lyrics \lyricsto sopranos \lyricChorus
      \new Staff <<
        \clef "bass"
        \new Voice = "tenor" {
          \voiceOne \global \stemUp \slurUp \musicChorusTenor
        }
        \new Voice = "basso" {
          \voiceTwo \global \stemDown \slurDown \musicChorusBasso
        }
      >>
    >>
}

\score {
    \new ChoirStaff <<
      \new Staff <<
        \clef "treble"
        \new Voice = "sopranos" {
          \voiceOne \global \stemUp \slurUp \musicVerseSoprano
        }
        \new Voice = "alto" {
          \voiceTwo \global \stemDown \slurDown \musicVerseAlto
        }
      >>
      \new Lyrics \lyricsto sopranos \lyricVerseFive
      \new Lyrics \printItalic \lyricsto sopranos \lyricVerseSix
      \new Lyrics \lyricsto sopranos \lyricVerseSeven
      \new Staff <<
        \clef "bass"
        \new Voice = "tenor" {
          \voiceOne \global \stemUp \slurUp \musicVerseTenor
        }
        \new Voice = "basso" {
          \voiceTwo \global \stemDown \slurDown \musicVerseBasso
        }
      >>
    >>
}

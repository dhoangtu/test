\version "2.18.2"

\header {
  title = "O Come, All Ye Faithful"
  composer = "John Francis Wade (1711–1786), Frederick Oakley (1802–1880)"
  tagline = ##f
  copyright = "Public Domain"
}

globalSettings = {
  \set Score.barNumberVisibility = #all-bar-numbers-visible
  \key g \major
  \time 4/4
}

verseSettings = {
  \phrasingSlurDashed
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
  \partial 4 g'4 |
  %{ 01 %} g2 d4 \(g\) |
  %{ 02 %} a2 \(d,\) |
  %{ 03 %} b'4 \(a\) b \(c\) |
  %{ 04 %} b2 \(a4\) g |
  %{ 05 %} g2 fis4 e |
  %{ 06 %} fis \(g\) a b |
  %{ 07 %} fis2 (e4.) d8 |
  %{ 08 %} d2. r4 |
  %{ 09 %} d'2 c4 \(b\) |
  %{ 10 %} c2 \(b\) |
  %{ 11 %} a4 \(b\) g \(a\)
  %{ 12 %} fis4. (e8) d4 \bar "||"
}

% Alto verse music
musicVerseAlto = \relative c' {
  \partial 4 d4 |
  %{ 01 %} d2 d4 \(d\) |
  %{ 02 %} e2 \(d\) |
  %{ 03 %} d4 \(d\) d \(e\) |
  %{ 04 %} d2 \(d4\) b |
  %{ 05 %} b (cis) d cis |
  %{ 06 %} d \(d\) d d |
  %{ 07 %} d2 (cis4.) d8 |
  %{ 08 %} d2. r4 |
  %{ 09 %} d2 e8 \(fis g4\) |
  %{ 10 %} \slurDashed g \( (fis) g2 \)|
  %{ 11 %} d4 \(d\) e \(e\) |
  %{ 12 %} d2 d4 \bar "||"
}

% Tenor verse music
musicVerseTenor = \relative c' {
  \partial 4 b4 |
  %{ 01 %} b2 b4 \(b\) |
  %{ 02 %} c2 \(a\) |
  %{ 03 %} g4 \(a\) g \(g\) |
  %{ 04 %} g2 \(fis4\) g |
  %{ 05 %} g2 a4 a |
  %{ 06 %} a \(g\) fis d |
  %{ 07 %} a'2 (g4.) fis8 |
  %{ 08 %} fis2. r4 |
  %{ 09 %} b2 c4 \(d\) |
  %{ 10 %} c2 \(d\) |
  %{ 11 %} d4 \(g,\) b \(c\) |
  %{ 12 %} a4. (g8) fis4 \bar "||"
}

% Basso verse music
musicVerseBasso = \relative c' {
  \partial 4 g4 |
  %{ 01 %} g2 g4 \(g\) |
  %{ 02 %} g2 \(fis\) |
  %{ 03 %} g4 \(fis\) g \(c,\) |
  %{ 04 %} d2 \(d4\) e |
  %{ 05 %} e2 d4 a |
  %{ 06 %} d \(b\) fis g |
  %{ 07 %} a2 (a4.) a8 |
  %{ 08 %} d2. r4 |
  %{ 09 %} b'2 a4 \(g\) |
  %{ 10 %} a2 \(g\) |
  %{ 11 %} fis4 \(g\) e \(c\) |
  %{ 12 %} d2 d4 \bar "||"
}

% Soprano chorus music
musicChorusSoprano = \relative c' {
  \set Score.currentBarNumber = #13
  \partial 4 g'4 |
  %{ 13 %} g fis g a |
  %{ 14 %} g2 d4 b' |
  %{ 15 %} b a b c |
  %{ 16 %} b2 a4 b |
  %{ 17 %} c b a g |
  %{ 18 %} fis2 g4 (c) |
  %{ 19 %} b2 (a4.) g8 |
  %{ 20 %} g2. \bar "|."
}

% Alto chorus music
musicChorusAlto = \relative c' {
  \partial 4 d4 |
  %{ 13 %} d1 ( |
  %{ 14 %} d2. ) d4 |
  %{ 15 %} d d d d |
  %{ 16 %} d2 d4 g |
  %{ 17 %} fis g d d8 cis |
  %{ 18 %} d2 d4 (e) |
  %{ 19 %} d2 (d4.) b8 |
  %{ 20 %} b2. \bar "|."
}

% Tenor chorus music
musicChorusTenor = \relative c' {
  \partial 4 b4 |
  %{ 13 %} b a b c |
  %{ 14 %} b2. g4 |
  %{ 15 %} g fis g a |
  %{ 16 %} g2 fis4 d' |
  %{ 17 %} d d a a |
  %{ 18 %} a2 g |
  %{ 19 %} g (fis4.) g8 |
  %{ 20 %} g2. \bar "|."
}

% Basso chorus music
musicChorusBasso = \relative c' {
  \partial 4 r4 |
  %{ 13 %} r1 |
  %{ 14 %} r1 |
  %{ 15 %} r1 |
  %{ 16 %} r2 r4 g |
  %{ 17 %} a g fis e |
  %{ 18 %} d (c) b (c) |
  %{ 19 %} d2 (d4.) g,8 |
  %{ 20 %} g2. \bar "|."
}

% 10. Verse lyrics
lyricVerseOne = \lyricmode {
  \set stanza = #"1."
  Oh, come, all ye faith -- ful,
  Joy -- ful and tri -- um -- phant!
  Oh, come ye, oh come - ye to Beth -- le -- hem.
  Come and be -- hold him,
  Born the King of an -- gels;
}

lyricVerseTwo = \lyricmode {
  \set stanza = #"2."
  — God, of — God,
  — Light — of — Light, —
  — Lo, He ab -- hors — not the Vir -- gins womb;
  Ve -- ry - God, be -- got -- ten, not cre -- at -- ed:
}

lyricVerseThree = \lyricmode {
  \set stanza = #"3."
  — Sing, choirs of an -- gels,
  Sing in ex -- ul -- ta -- tion;
  — Sing, all ye ci -- ti -- zens of heav’n a -- bove!
  Glo -- ry to God, -
  Glo -- ry in the high -- est;
}

lyricVerseFour = \lyricmode {
  \set stanza = #"4."
  — Yea, Lord, we greet thee,
  Born this hap -- py morn -- ing;
  — Je -- sus, to thee - - be glo -- ry giv’n.
  Son of the Fa -- ther,
  Now in flesh ap -- pear -- ing;
}

% 11. Chorus lyrics
lyricChorus = \lyricmode {
  \set stanza = #"Refrain:"
  O come, let us a -- dore Him
  O come, let us a -- dore Him
  O come, let us a -- dore Him
  Christ the Lord
}

% 12. Layout
\score {
    \new ChoirStaff <<
      \new Staff <<
        \clef "treble"
        \new Voice = "soprano" {
          \voiceOne \globalSettings \verseSettings \stemUp \slurUp \musicVerseSoprano
        }
        \new Voice = "alto" {
          \voiceTwo \globalSettings \verseSettings \stemDown \slurDown \musicVerseAlto
        }
      >>
      \new Lyrics \lyricsto soprano \lyricVerseOne
      \new Lyrics \printItalic \lyricsto soprano \lyricVerseTwo
      \new Lyrics \lyricsto soprano \lyricVerseThree
      \new Lyrics \printItalic \lyricsto soprano \lyricVerseFour
      \new Staff <<
        \clef "bass"
        \new Voice = "tenor" {
          \voiceOne \globalSettings \verseSettings \stemUp \slurUp \musicVerseTenor
        }
        \new Voice = "basso" {
          \voiceTwo \globalSettings \verseSettings \stemDown \slurDown \musicVerseBasso
        }
      >>
    >>
}

\score {
    \new ChoirStaff <<
      \new Staff <<
        \clef "treble"
        \new Voice = "soprano" {
          \voiceOne \globalSettings \stemUp \slurUp \musicChorusSoprano
        }
        \new Voice = "alto" {
          \voiceTwo \globalSettings \stemDown \slurDown \musicChorusAlto
        }
      >>
      \new Lyrics \lyricsto soprano \lyricChorus
      \new Staff <<
        \clef "bass"
        \new Voice = "tenor" {
          \voiceOne \globalSettings \stemUp \slurUp \musicChorusTenor
        }
        \new Voice = "basso" {
          \voiceTwo \globalSettings \stemDown \slurDown \musicChorusBasso
        }
      >>
    >>
}

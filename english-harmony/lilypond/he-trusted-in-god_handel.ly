\version "2.18.2"

\header {
  title = "He trusted in God"
  subtitle = "from Messiah"
  composer = "G.F.Handel (1685-1759)"
  tagline = ##f
  copyright = "Public Domain"
}

\paper {
  #(set-paper-size "a4")
  top-margin = 15\mm
  bottom-margin = 15\mm
  left-margin = 20\mm
  right-margin = 20\mm
  %indent = #0
  #(define fonts
	 (make-pango-font-tree "Liberation Serif"
	 		       "Liberation Serif"
			       "Liberation Serif"
			       (/ 20 20)))
  print-page-number = ##f
}

global = {
  \key c \minor
  \time 4/4
  \autoBeamOff
}

% Soprano music
musicSoprano = \relative c' {
  %{ 01-05 %} r1 | r1 | r1 | r1 | r1 |
  %{ 06-10 %} r1 | r1 | r1 | r1 |
                <>^\markup { \fontsize #6 \box \bold A }
                r1 |
  %{ 11-15 %} r1 | r1 | r1 | r2 r4 c' ^\f | g a!8 a bes g c4 ( |
  %{ 16-20 %} c8) bes16 (a! bes8) c d bes ees4 | r8 d d d g c, c4 | r8 ees d c bes4 a!4 | g r r2 | r8 c ^\mf f ees d8. c16 bes4 |
  %{ 21-25 %} r8 bes c4 (c8) c8 bes4 ( |
                <>^\markup { \fontsize #6 \box \bold B }
                bes) a! bes r | r1 | r1 | r1 |
  %{ 26-30 %} r1 | r8 f ^\f f' ees d8. c16 bes4 | r2 r4 bes | ees, f8 f g ees aes4 ( | aes8) g16 (f g8) aes bes g c4 |
  %{ 31-35 %} r8 bes bes bes ees aes, aes4 | r8 c bes aes g4 f |
                <>^\markup { \fontsize #6 \box \bold C }
                ees r r2 | r8 c' f f e!8. d16 c4 | r2 r8 g c bes |
  %{ 36-40 %} aes (g f e! f4) des' | c2 r8 g c bes | a!8. g16 f4 r2 | r8 c' f ees d8. c16 bes4 | r8 c a! bes c d ees d |
  %{ 41-45 %} d4 c d8. d16 d4 |
                <>^\markup { \fontsize #6 \box \bold D }
                r1 | r1 | r1 | r2 r8 d, ^\mf d' c |
  %{ 46-50 %} b!8. a!16 g4 r2 | r8 d' g f ees8. d16 c4 | r8 c f ees d8. c16 bes4 | r1 |
                <>^\markup { \fontsize #6 \box \bold E }
                r4 g' ^\f c, d8 d |
  %{ 51-55 %} ees c f4 (f8) ees16 (d ees8) f | g ees aes4 r8 g g g | g f f4 r8 aes g f | ees4 d c r | r1 |
  %{ 56-60 %} r8 bes ees d c (d16 ees d8) c | b!4 r r8 c bes aes | g \melisma ees' d c b! g g'4 ( |
                g) \melismaEnd f8 (ees) d bes ees4 ( | ees) d8 (c) b!8. b16 b4 |
  %{ 61-65 %} r b! ^\ff \tempo \markup { "Adagio" } c c | c2 b! | c1 \bar "|."
}

% Soprano lyrics
lyricsSoprano = \lyrics {
  %{ 14 %} He trus -- ted in God that He would de -- li -- ver Him; let Him de -- li -- ver Him, if He de -- light in Him,
  %{ 20 %} let Him de -- li -- ver Him, if He de -- light in Him,
  %{ 26 %} let Him de -- li -- ver Him. He trus -- ted in God that He would de -- li -- ver Him, let Him de -- li -- ver Him,
  %{ 32 %} if He de -- light in Him, let Him de -- li -- ver Him, if He de -- light in Him, if He de -- light in Him,
  %{ 39 %} let Him de -- li -- ver Him, if he de -- light in Him, let Him de -- li -- ver Him,
  %{ 45 %} let Him de -- li -- ver Him, let Him de -- li -- ver Him, let Him de -- li -- ver Him.
  %{ 50 %} He trus -- ted in God that He would de -- li -- ver Him, let him de -- li -- ver Him, if He de -- light in Him,
  %{ 56 %} if He de -- light in Him, if He de -- light -- in Him, let Him de -- li -- ver Him, if He de -- light in Him.
}

% Alto music
musicAlto = \relative c'' {
  %{ 01-05 %} r1 | r1 | r1 | r1 | r1 |
  %{ 06-10 %} r1 | r1 | r1 | r1 | r4 g ^\f c, d8 d |
  %{ 11-15 %} ees8 c f4 (f8) ees16( d ees8) f | g ees aes4 r8 g g g | c f, f4 r8 aes g f | ees4 d c r |
                r8 g' f ees d \melisma g fis g |
  %{ 16-20 %} d a'! g fis g4. a16 bes | a!4. bes16 a g4. a16 g | fis4 g2 \melismaEnd fis4 | g r r2 | r2 r8 f ^\mf bes aes |
  %{ 21-25 %} g8. f16 ees8 g f4. g8 | ees4. ees8 d4 r | r f ^\f bes, c8 c | d bes ees4 (ees8) d16 (c d8) ees |
                f d g4 r8 f f f |
  %{ 26-30 %} bes ees, ees4 r8 g f ees | d4 c bes8 d ees f | g \melisma ees d c bes ees4 d8 | c bes \melismaEnd c (d) ees4 r |
                r8 d ees f g ees aes f |
  %{ 31-35 %} d4. d8 c4. c8 | d d ees ees ees4 d | ees r r8 f ^\mf bes bes | aes8. g16 f4 r2 | r8 c f f e!8. d16 c4 |
  %{ 36-40 %} r2 r8 aes' g f | e! (c f2) e8 (d) | c4 r r2 | r r8 f bes bes | a!8. g16 f4 r8 bes g fis |
  %{ 41-45 %} g4. g8 fis4. fis8 ^\f | g4 f8 ees d bes' a! g | fis d g a! bes4. bes8 | a! \melisma f bes a g a16 bes a8 g |
                fis d g2 \melismaEnd fis4 |
  %{ 46-50 %} g8 d ^\mf g f ees8. d16 c4 | r1 | r2 r8 f bes aes | g2. f4 | g g ^\f ees g8 g |
  %{ 51-55 %} g g aes aes g4. f8 | ees ees f f f (d bes'4 | aes4.) aes8 g d g aes | g8. g16 g4 r8 g c bes |
                aes8. g16 f4 r8 f bes aes |
  %{ 56-60 %} g4. \melisma f8 ees f16 g f4 ( | f8) g16 f ees8 d ees4 d8 c | bes ees aes4 g4. f8 | ees4 \melismaEnd f bes4. bes8 |
                aes4. aes8 g8. g16 g4 |
  %{ 61-65 %} r g ^\ff g g | g2. g4 | g1 \bar "|."
}

% Alto lyrics
lyricsAlto = \lyrics {
  %{ 10 %} He trus -- ted in God that He would de -- li -- ver Him; let Him de -- li -- ver Him, if He de -- light in Him,
  %{ 15 %} if he de -- light -- in Him, let Him de -- li -- ver Him, if He de -- light in Him.
  %{ 23 %} He trus -- ted in God that He would de -- li -- ver Him; let Him de -- li -- ver him, if He de -- light in Him,
  %{ 27 %} if He de -- light -- in Him, let Him de -- li -- ver Him, if He de -- light in Him, if he de -- light in Him,
  %{ 33 %} let Him de -- li -- ver Him, let Him de -- li -- ver Him, if he de -- light in Him,
  %{ 39 %} let Him de -- li -- ver Him, if He de -- light in Him.
  %{ 41 %} He trus -- ted in God, let Him de -- li -- ver Him, if He de -- light -- in Him, let Him de -- li -- ver Him,
  %{ 48 %} if He de -- light in Him. He trus -- ted in God, let Him de -- li -- ver Him, let Him de -- li -- ver Him,
  %{ 53 %} if He de -- light in Him, let Him de -- li -- ver Him, if He de -- light -- in Him,
  %{ 59 %} let Him de -- li -- ver Him, if He de -- light in Him.
}


% Tenor music
musicTenor = \relative c' {
  %{ 01-05 %} r1 | r1 | r1 | r1 | r2 r4 c ^\f |
  %{ 06-10 %} g a!8 a bes g c4 ( | c8) bes16 (a! bes8) c d bes ees4 | r8 d d d g c, c4 | r8 ees d c bes4 a! | g r r8 g a! b! |
  %{ 11-15 %} c4 r8 d g, b! c d | ees c f f bes,4 r8 ees | aes,4. aes8 g b! c d | g,4 b! c8 d ees d |
                c4. \melisma d16 c bes8 d c bes |
  %{ 16-20 %} a! d4 c8 bes d c4 ( | c8) f d4 (d8) ees16 d c8 ees | a,!4 \melismaEnd bes8 (c) d2 | r8 d ^\mf g f e!8. d16 c4 | r2 r4 r8 bes |
  %{ 21-25 %} ees4. ees8 d4. (ees16 d | c4.) c8 bes bes ^\f a! g | f (bes4 a!8 g f g) a | bes4 r r8 a! bes c | d bes ees c a!4. a8 |
  %{ 26-30 %} g4. g8 a! a bes bes | bes4 a! bes bes | ees, f8 f g4. g8 | aes (g) aes f ees ees' f ees | d bes ees4 r4 r8 aes, |
  %{ 31-35 %} f4 g ees f | bes8 aes g aes bes4. bes8 | bes ^\mf bes ees ees d8. c16 bes4 | r1 | r2 r4 r8 c |
  %{ 36-40 %} f,4 g8 g aes f bes4 ( | bes8) aes16 (g aes8) bes c4. c8 | f,4 r r8 f bes bes | a!8. g16 f4 r2 | r8 f f g a! bes c d |
  %{ 41-45 %} ees4. ees8 d8. d16 a!8 a8 ^\f | bes4 c8 c d d c bes | a! a d c bes bes g' \melisma ees |
                c d16 ees f8 d bes c16 d ees8 c | a! bes16 c d8 c bes4 \melismaEnd a4 |
  %{ 46-50 %} g r r8 g8 ^\mf c c | b!8. a!16 g4 r2 | r1 | r8 bes ees d c (d16 ees d8) c | b! d ^\f c b g'4. \melisma f8 |
  %{ 51-55 %} ees4 d2 c8 b! | c4. d16 c bes4 g'8 f | ees c f ees d \melismaEnd d ees c | c4 b! c r | r8 c f ees d8. c16 bes4 |
  %{ 56-60 %} r8 ees, f g aes4. aes8 | g d' c b! g'4 \melisma f | ees8 g f ees d4 c8 d | bes4 \melismaEnd c f8 f g ees |
                f4. ees8 d8. d16 d4 |
  %{ 61-65 %} r d ^\ff ees ees | d2. d4 | ees1 \bar "|."
}

% Tenor lyrics
lyricsTenor = \lyrics {
  %{ 05 %} He trus -- ted in God that He -- would -- de -- li -- ver him; let Him de -- li -- ver Him, if He de -- light in Him,
  %{ 10 %} if He de -- light in Him, let Him de -- li -- ver Him, if He de -- light in Him, if He de -- light in Him,
  %{ 14 %} if He de -- light -- in Him,
  %{ 19 %} let Him de -- li -- ver Him, if He de -- light -- in Him, if He de -- light -- in Him,
  %{ 24 %} let Him de -- li -- ver Him if He de -- light in Him, if He de -- light in Him.
  %{ 27 %} He trus -- ted in God, he trus -- ted in God, let Him de -- li -- ver Him, if He de -- light in Him,
  %{ 32 %} if He de -- light in Him, let Him de -- li -- ver Him.
  %{ 35 %} He trus -- ted in God that He would de -- li -- ver Him; let Him de -- li -- ver Him, if He de -- light in Him,
  %{ 40 %} let Him de -- li -- ver Him.
  %{ 41 %} He trus -- ted in God, let Him de -- li -- ver Him, if he de -- light -- in Him,
  %{ 46 %} let Him de -- li -- ver Him, if He de -- light -- in him, if He de -- light -- if He de -- light in Him,
  %{ 55 %} let Him de -- li -- ver Him, if He de -- light in Him,
  %{ 57 %} if He de -- light -- in Him, let Him, let Him de -- li -- ver Him, if He de -- light in Him.
}


% Basso music
musicBass = \relative c {
  %{ 01-05 %} r4 g' ^\f c, d8 d8 | ees c f4 (f8) ees16 (d ees8) f | g ees aes4 r8 g g g | c f, f4 r8 aes g f | ees4 d c r |
  %{ 06-10 %} r8 ees d c g'4 r8 a! | d, fis g a! bes g c c | f,4 r8 bes ees,4. ees8 | d fis g c, d4 f! | g8 f ees d  ees4 f8 (g) |
  %{ 11-15 %} c,4 r r2 | r1 | r1 | r4 g' c, c8 d | ees4 d8 (c) g' bes a! g |
  %{ 16-20 %} fis4 g8 a! bes g c c | f, f bes bes ees,4. ees8 | d2 r8 d8 ^\mf d' c | b!8. a!16 g4 r8 g c bes | a8. g16 f4 r2 |
  %{ 21-25 %} r1 | r4 f ^\f bes, c8 c | d4. d8 ees (d) ees c | bes bes' c bes a! f b4 | r r8 ees,8 c4 d |
  %{ 26-30 %} bes c f8 ees d ees | f4. f8 bes,4 r | r1 | r1 | r1 |
  %{ 31-35 %} r1 | r2 r8 bes ^\f bes' aes | g8. f16 ees4 r2 | r2 r8 g ^\mf c bes | aes8. g16 f4 r2 |
  %{ 36-40 %} r1 | r1 | r8 f f ees d8. c16 bes4 | r1 | r1 |
  %{ 41-45 %} r2 r4 f'4 ^\f | g, a!8 a bes g c4 ( | c8) bes16 (a! bes8) c d bes ees4 ( | ees8) d d d d c c4 ( | c8) c bes c d4. d8 |
  %{ 46-50 %} g,4 r r2 | r2 r8 g' ^\mf c bes | aes8. g16 f4 r2 | r8 ees g ees aes4. aes8 | g f ^\f ees d c \melisma c' b! g |
  %{ 51-55 %} c4. d16 c16 b!8 g c, d | ees c f \melismaEnd ees d bes' ees f, | c8 \melisma ees d c b! c16 b c8 \melismaEnd f |
                g g g f ees8. d16 c4 | r1 |
  %{ 56-60 %} r1 | r4 g' c, d8 d | ees c f4 (f8) ees16 (d ees8) f | g ees aes4 (aes8) g g g | f4. f8 f8. f16 f4 |
  %{ 61-65 %} r f ^\ff ees c | g'2. g4 | c,1 \bar "|."
}

% Basso lyrics
lyricsBass = \lyrics {
  %{ 01 %} He trus -- ted in God that He would de -- li -- ver Him; let Him de -- li -- ver him, if He de -- light in Him,
  %{ 06 %} if He de -- light in him, let him de -- li -- ver Him, if He de -- light in him, if He de -- light in Him,
  %{ 10 %} if He de -- light in Him.
  %{ 14 %} He trus -- ted in God, in God, in God He trus -- ted; let Him de -- li -- ver Him, if He de -- light in Him,
  %{ 18 %} if He de -- light in Him, let Him de -- li -- ver Him.
  %{ 22 %} He trus -- ted in God, he trus -- ted in God, let Him de -- li -- ver Him, if he de -- light in Him,
  %{ 26 %} if he de -- light in Him,
  %{ 32 %} let him de -- li -- ver Him, let Him de -- li -- ver Him,
  %{ 38 %} let Him de -- li -- ver Him.
  %{ 41 %} He trus -- ted in God that He would de -- li -- ver Him; let him de -- li -- ver Him, if He de -- light in Him,
  %{ 47 %} let Him de -- li -- ver Him, if He de -- light in Him, if He de -- light -- in Him,
  %{ 52 %} if He de -- light -- in Him, let Him de -- li -- ver Him.
  %{ 57 %} He trus -- ted in God that He would de -- li -- ver Him; let Him, let Him de -- li -- ver Him, if He de -- light in Him.
}

% 10. Layout
\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = #"Soprano" } <<
      \new Voice = "Soprano" { \clef treble \global \musicSoprano }
      \new Lyrics \lyricsto Soprano \lyricsSoprano
    >>
    \new Staff \with { instrumentName = #"Alto" } <<
      \new Voice = "Alto" { \clef treble \global \musicAlto }
      \new Lyrics \lyricsto Alto \lyricsAlto
    >>
    \new Staff \with { instrumentName = #"Tenor" } <<
      \new Voice = "Tenor" { \clef "violin_8" \global \musicTenor }
      \new Lyrics \lyricsto Tenor \lyricsTenor
    >>
    \new Staff \with { instrumentName = #"Bass" } <<
      \new Voice = "Bass" { \clef bass \global \musicBass }
      \new Lyrics \lyricsto Bass \lyricsBass
    >>
  >>
}

\version "2.18.2"

\header {
  title = "Hallelujah"
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
  indent = #0
  #(define fonts
	 (make-pango-font-tree "Liberation Serif"
	 		       "Liberation Serif"
			       "Liberation Serif"
			       (/ 20 20)))
  print-page-number = ##f
}

global = {
  \key d \major
  \time 4/4
  \tempo "Allegro"
}

smallNote = #(define-music-function
  (parser location note)
  (ly:music?)
  #{
    \tweak font-size #-3
    #note
  #}
)

% Soprano music
musicSoprano = \relative c {
  %{ 01-05 %} r1 | r1 | r1 | d''4. ^\f a8 b8 a8 r4 | d4. a8 b8 a8 r8 d16 d16 |
  %{ 06-10 %} d8 d8 r8 d16 d16 d8 d8 r8 d8 | cis8 (d4) cis8 d4 r4 | e4. a,8 fis'8 e8 r4 | e4. a,8 fis'8 e8 r8 e16 e16 |
                fis8 e8 r8 e16 e16 fis8 e8 r8 e8 |
  %{ 11-15 %} fis8 (e8) d4 cis4 r4 | a2 b4 cis4 | d8 d,8 d'4. d8 cis4 |
                <>^\markup { \fontsize #6 \box \bold A }
                b2 a4 r8 e'16 e16 | d8 cis r8 e16 e16 d8 cis8 r8 e16 e16 |
  %{ 16-20 %} fis8 e8 r8 e16 e16 fis8 e8 r4 | r1 | r1 | r2 r4 r8 d16 d16 | d8 d8 r8 d16 d16 d8 d8 r8 d16 d16 |
  %{ 21-25 %} d8 d8 r8 d16 d16 d8 d8 r4 |
                <>^\markup { \fontsize #6 \box \bold B }
                d2 e4 fis4 | g8 g,8 g'4. g8 fis4 | e2 d4 r8 d16 d16 |
                cis8 a8 r8 cis16 cis16 d8 d16 d16 e8 e8 |
  %{ 26-30 %} a,4 r8 d16 cis16 b8 b8 r8 e8 | d8 (cis8) d8 (e16 d16) cis8 cis16 cis16 e8 cis8 | r8 a16 a16 d8 a8 r8 cis16 cis16 e8 cis8 |
                r8 a16 a16 fis'8 d8 r8 cis16 cis16 d8 a8 | r8 b16 b16 e8 e8 r8 cis16 cis16 d8 d16 d16 |
  %{ 31-35 %} d4 cis4 d4 d4 | d4 d4 d2 | r2 r4 a4 ^\p |
                <>^\markup { \fontsize #6 \box \bold C }
                a4 g4 fis4 e8. (d16) | d1 |
  %{ 36-40 %} r2 fis4 e8. (d16) | d2. fis'4 ^\f | e4 d4 d4 cis4 | d4. cis8 d4 d4 | cis4. a8 b4 cis4 |
  %{ 41-45 %} <>^\markup { \fontsize #6 \box \bold D }
                d2 r2 | r1 | r1 | r1 | r1 |
  %{ 46-50 %} r1 | r1 | r2 r4 d4 ^\f | a'4 cis,4 fis4 a,4 | d4 cis8 b cis4 (b8. a16) |
  %{ 51-55 %} <>^\markup { \fontsize #6 \box \bold E }
                a2 a4 a4 | a1 ~ | a | r4 a4 a4 a4 | a1 ~ |
  %{ 56-60 %} a | r2 d4 d4 | d1 ~ | d1 ~ | d4 d4 e4 e4 |
  %{ 61-65 %} e1 ~ | e ~ | e2 fis4 fis4 | fis1 ~ | fis ~ |
  %{ 66-70 %} fis4. fis8 ^\ff g4 g4 |
                <>^\markup { \fontsize #6 \box \bold F }
                g1 ~ | g4. g8 fis8 (e8) fis8  (g8) | e2 r8 cis8 ^\f d8 e8 | a,4 r4 r2 |
  %{ 71-75 %} r2 r4 a4 | d4 fis,4 b4 d,4 | g4 fis8 e8 fis4 (e8. d16) | d2 r2 | r4 r8 d'8 ^\ff g8 fis8 r8 d8 |
  %{ 76-80 %} g8 fis8 r4 r2 | r4 r8 d16 d16 g8 fis8 r8 d16 d16 | g8 fis8 r8 a,8 a4 d4 | fis4 d4 d4 a8 a8 | cis4 d8 d8 d4 (cis4) |
  %{ 81-85 %} <>^\markup { \fontsize #6 \box \bold G }
                d4 r4 a4 a4 | d4 r8 a8 a4 a4 | d4 r4 a4 a4 | d4 r8 a8 a4 a4 | d4 r4 r4 a4 |
  %{ 86-90 %} d4 fis4 b,4 d4 | g4 fis8 e8 e2 | d4 r4 d4 d4 | d4 r8 d8 d4 d4 | d4 r8 d16 d16 d8 d8 r8 d16 d16 |
  %{ 91-94 %} d8 d8 r8 d16 d16 d8 d8 r8 d16 d16 | d8 d8 r4 r4 d4 | d2. d4 | d1 ^\fermata \bar "|."
}

% Soprano lyrics
lyricsSoprano = \lyrics {
	%{ 04 %} Hal -- le -- lu -- jah, Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
	%{ 06 %} Hal -- le -- lu -- jah, Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
	%{ 09 %} Hal -- le -- lu -- jah, Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
	%{ 10 %} Hal -- le -- lu -- jah.
	%{ 12 %} For the Lord God om -- ni -- po -- tent reign -- eth,
	%{ 14 %} Hal -- le -- lu -- jah, Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
	%{ 16 %} Hal -- le -- lu -- jah, Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
	%{ 20 %} Hal -- le -- lu -- jah, Hal -- le -- lu -- jah.
	%{ 22 %} For the Lord God om -- ni -- po -- tent reign -- eth,
	%{ 24 %} Hal -- le -- lu -- jah, Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
	%{ 26 %} Hal -- le -- lu -- jah, Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
	%{ 28 %} Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,	Hal -- le -- lu -- jah,
	%{ 29 %} Hal -- le -- lu -- jah, Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
	          Hal -- le -- lu -- jah, Hal -- le -- lu -- jah.
	%{ 33 %} The king -- dom of this world is be -- come
	%{ 37 %} the king -- dom of our Lord and of his Christ, and of his Christ.
	%{ 48 %} And He shall reign for ev -- er and ev -- er.
	%{ 51 %} King of kings, __ and Lord of lords. __
	%{ 57 %} King of kings, __ and Lord of lords. __
	%{ 63 %} King of kings, __ and Lord of lords, __ and Lord of lords.
	%{ 69 %} And He shall reign,
	%{ 71 %} and He shall reign for ev -- er and ev -- er, for ev -- er and ev -- er.
	%{ 77 %} Hal -- le -- lu -- jah, Hal -- le -- lu -- jah.
	%{ 78 %} And He shall reign for ev -- er, for ev -- er and ev -- er.
	%{ 81 %} King of kings, and Lord of lords.
	%{ 83 %} King of kings, and Lord of lords.
	%{ 85 %} And He shall reign for ev -- er and ev -- er.
	%{ 88 %} King of kings, and Lord of lords.
	%{ 90 %} Hal -- le -- lu -- jah, Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
            Hal -- le -- lu -- jah,
  %{ 92 %} Hal -- le -- lu -- jah.
}

% Alto music
musicAlto = \relative c'' {
  %{ 01-05 %} r1 | r1 | r1 | a4.^\f a8 g fis r4 | a4. a8 g fis r8 a16 a |
  %{ 06-10 %} b8 a r8 a16 a b8 a r8 a | g (fis e) e fis4 r | a4. a8 a a r4 | a4. a8 a a r8 a16 a | a8 a r8 a16 a a8 a r8 a |
  %{ 11-15 %} a4. gis8 a4 r | a2 b,4 cis4 | d8 d d4. d8 cis4 | b2 a4 r8 a'16 a | a8 a r8 a16 a a8 a r8 a16 a |
  %{ 16-20 %} a8 a r8 a16 a a8 a r4 | d,2 e4 fis4 | g8 g, g'4. g8 fis4 | e2 d4 r8 a'16 a | b8 a r8 a16 a b8 a r8 a16 a |
  %{ 21-25 %} b8 a r8 a16 a b8 a r4 | r1 | r2 r4 r8 a16 a | g8 e16 e a8 a a a16 a fis8 d | r8 e16 e cis8 a r8 g'16 (fis) e8 a16 (g) |
  %{ 26-30 %} fis4 r8 b16 a gis8 e16 e a4 ~| a4 gis4 a4 r8 e16 e | a8 fis r8 fis16 fis e8 cis r4 | d2 e4 fis4 | g8 g, g'4. g8 fis4 |
  %{ 31-35 %} e2 d8 a'16 a fis8 d | r8 b' b b a2 | r2 r4 fis4 ^\p | fis4 e4 d4 cis4 | d1 |
  %{ 36-40 %} r4 d2 cis4 | d2. a'4 ^\f | a4 d,4 fis4 e8. (d16) | d4. e8 fis4 gis4 | a4. a8 g!4 g4 |
  %{ 41-45 %} a2 r | r1 | r1 | r1 | r1 |
  %{ 46-50 %} r4 a4 ^\f <d, \smallNote d'>4 fis4 | b4 d,4 g4 fis8 e | fis4( e8. d16) d8 a' fis d | r8 e a e r4 r8 cis8 | d (b') a2 gis4 |
  %{ 51-55 %} a4 e4 a4 a4 | a1 ~ | a | r4 a4 a4 a4 | a1 ~ |
  %{ 56-60 %} a~ | a2 r | r4 r8 a8 b a r8 a | b a r8 a16 a b8 a r8 a16 a | b8 a r4 r2 |
  %{ 61-65 %} r4 r8 e8 a gis r8 e | a gis r8 e16 e a8 gis r8 e16 e | a8 gis r4 r2 | r4 r8 fis8 b ais r8 fis |
                b ais r8 fis16 fis b8 ais r8 fis16 fis |
  %{ 66-70 %} b4 fis4 r2 | r2 b4 ^\ff b4 | a4. a8 a4 a4 | a2 r | r r8 fis8 ^\f gis a |
  %{ 71-75 %} d, (cis d e16 d cis8) e a g! | fis4. (e8 d4.) d8 | d (cis) d d d4 (cis4) | d2 d4 ^\ff d4 | d4 r8 a' b a r8 a |
  %{ 76-80 %} b a r8 d, d4 d4 | d4 r8 a'16 a b8 a r8 a16 a | b8 a r4 r a4 | <d \smallNote d,>4 <fis, \smallNote a>4 b4 d,4 |
                g4 fis8 <e \smallNote fis> e2 |
  %{ 81-85 %} fis4 r fis4 fis8. (g16) | a4 r8 fis8 fis4 fis8. (g16) | a4 r fis4 fis4 | a4 r8 fis8 fis4 fis8. (g16) |
                a4 r r  fis4 |
  %{ 86-90 %} fis4 fis4 d4 a'4 | e4 a8 a a2 | a4 r8 a b a r8 a | b a r8 a b a r8 a | b a r8 a16 a b8 a r8 a16 a |
  %{ 91-94 %} b8 a r8 a16 a b8 a r8 a16 a | b8 a r4 r4  fis4 | g2. g4 | fis1 -\fermata \bar "|."
}

% Alto lyrics
lyricsAlto = \lyrics {
  %{ 04 %} Hal -- le -- lu -- jah, Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  %{ 06 %} Hal -- le -- lu -- jah, Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  %{ 09 %} Hal -- le -- lu -- jah, Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
            Hal -- le -- lu -- jah,
  %{ 12 %} For the Lord God om -- ni -- po -- tent reign -- eth,
  %{ 14 %} Hal -- le -- lu -- jah, Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
            Hal -- le -- lu -- jah.
  %{ 17 %} For the Lord God om -- ni -- po -- tent reign -- eth,
  %{ 19 %} Hal -- le -- lu -- jah, Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  %{ 21 %} Hal -- le -- lu -- jah,
  %{ 23 %} Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
            Hal -- le -- lu -- jah,
  %{ 25 %} Hal -- le -- lu -- jah, Hal -- le -- lu -- jah, Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
            Hal -- le -- lu -- jah, Hal -- le -- lu -- jah.
  %{ 29 %} For the Lord God om -- ni -- po -- tent reign -- eth,
  %{ 31 %} Hal -- le -- lu -- jah, Hal -- le -- lu -- jah.
  %{ 33 %} The king -- dom of this world is be -- come the king -- dom of our Lord and of his Christ, and of his Christ.
  %{ 46 %} And He shall reign for ev -- er and ev -- er, for ev -- er and ev -- er, for ev -- er and ev -- er.
  %{ 51 %} King of kings, and Lord of lords,
  %{ 58 %} for ev -- er and ev -- er. Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  %{ 61 %} for ev -- er and ev -- er. Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  %{ 64 %} for ev -- er and ev -- er. Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  %{ 67 %} King of kings, and Lord of lords.
  %{ 70 %} And He shall reign, and He shall reign for ev -- er and ev -- er.
  %{ 74 %} King of kings, for ev -- er and ev -- er, and Lord of lords.
  %{ 77 %} Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  %{ 78 %} And He shall reign for ev -- er and ev -- er.
  %{ 81 %} King of kings, and Lord of lords, King of kings, and Lord of lords,
  %{ 85 %} And He shall reign for ev -- er and ev -- er, for ev -- er and ev -- er, for ev -- er and ev -- er.
  %{ 90 %} Hal -- le -- lu -- jah, Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
            Hal -- le -- lu -- jah,
  %{ 92 %} Hal -- le -- lu -- jah.
}


% Tenor music
musicTenor = \relative c {
  %{ 01-05 %} r1 | r1 | r1 | fis'4.^\f d8 d d r4 | fis4. d8 d d r8 d16 d |
  %{ 06-10 %} g8 fis r8 d16 d g8 fis r8 d | e( a,4) a8 a4 r | cis4. e8 d cis r4 |
                cis4. e8 d cis r8 e16 e | d8 cis r8 e16 e d8 cis r8 e |
  %{ 11-15 %} d (e fis) d e4 r | a,2 b4 cis4 | d8 d, d'4. d8 cis4 | b2 a4 r8 a16 a | fis'8 e r8 e16 e fis8 e r8 e16 e |
  %{ 16-20 %} d8 cis r8 e16 e d8 cis r4 | d2 e4 fis4 | g8 g, g4. g8 fis4 | e2 d4 r8 d'16 d | g8 fis r8 d16 d g8 fis r8 d16 d |
  %{ 21-25 %} g8 fis r8 d16 d g8 fis r4 | r4 r8 d16 d cis8 a r8 d16 d | b8 b r8 e16 e cis8 a16 a d4~ |
                d4 cis4 d8 fis16 fis a8 fis | a,2 b4 cis4 |
  %{ 26-30 %} d8 d, d'4. d8 cis4 | b2 a8 e'16 e cis8 a | r8 d16 d fis8 d r8 e16 e cis8 a | d2 e4 fis4 | g8 g, g'4. g8 fis4 |
  %{ 31-35 %} e2 d4. fis8 | g4. g8 fis2 | r2 r4 d ^\p | a4 d,4 a'4. a8 | a1 |
  %{ 36-40 %} r2 a4 g8. (fis16) | fis2. d'4 ^\f | e4 g4 a,4. a8 | a4. g8 a4 d4 | e4. d8 d4 e4 |
  %{ 41-45 %} fis2 r | r1  | r2 r4 d ^\f | a'4 cis,4 fis4 a,4 | d4 cis8 b cis4 (b8. a16) |
  %{ 46-50 %} a4 r4 r8 a8 d d | d4 r8 b8 e (cis) d d | d4 (cis4) d4 r | r2 r8 d8 cis a | fis' (e4) fis8 e e r8 e |
  %{ 51-55 %} e4 cis4 r2 | r4 r8 e8 fis e r8 e | fis e r8 e16 e fis8 e r8 e16 e | fis8 e r4 r2 | r4 r8 e8 fis e r8 e |
  %{ 56-60 %} fis e r8 e16 e fis8 e r8 e16 e | fis8 e r4 r2 | r4 r8 d8 g fis r8 d | g fis r8 d16 d g8 fis r8 d16 d |  g8 fis r4 r2 |
  %{ 61-65 %} r4 r8 b,8 cis b r8 b | cis b r8 b16 b cis8 b r8 b16 b | cis8 b r4 r2 | r4 r8 cis8 d cis r8 cis |
                d cis r8 cis16 cis d8 cis r8 cis16 cis |
  %{ 66-70 %} d4 d4 r2 | r d4  ^\ff d4 | e4. e8 d (cis) d (e) | cis2 r2 | r8 a b cis fis, a a4~ |
  %{ 71-75 %} a gis4 a4 r4 | r8 a8 d cis b4. a8 | g4 a8 b a2 | a2 d4 ^\ff d4 | d1 ~ |
  %{ 76-80 %} d4. d8 d4 d4 | d1 ~ | d4 r8 fis fis4 d4 | d4 d4 b4 a8 a | g4 a8 a a2 |
  %{ 81-85 %} a4 r d4 d8. (e16) | fis4 r8 d8 d4 d8. (e16) | fis4 r d4 d4 | fis4 r8 d8 d4 d8. (e16) | fis4 r  r d4 |
  %{ 86-90 %} d4 a4 b4 a4 | cis4 d8 d d4 (cis4) | fis4 r8 d g fis r8 d | g fis r8 d g fis r8 d | g fis r8 d16 d g8 fis r8 d16 d |
  %{ 91-94 %} g8 fis r8 d16 d g8 fis r8 d16 d | g8 fis r4 r a,4 | b2. b4 | a1-\fermata \bar "|."
}

% Tenor lyrics
lyricsTenor = \lyrics {
	%{ 04 %} Hal -- le -- lu -- jah, Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
	%{ 06 %} Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,	Hal -- le -- lu -- jah,
	%{ 09 %} Hal -- le -- lu -- jah, Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
	          Hal -- le -- lu -- jah,
	%{ 12 %} For the Lord God om -- ni -- po -- tent reign -- eth,
	%{ 14 %} Hal -- le -- lu -- jah, Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
	          Hal -- le -- lu -- jah.
	%{ 17 %} For the Lord God om -- ni -- po -- tent reign -- eth,
	%{ 19 %} Hal -- le -- lu -- jah, Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
	%{ 21 %} Hal -- le -- lu -- jah, Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
	%{ 23 %} Hal -- le -- lu -- jah, Hal -- le -- lu -- jah, Hal -- le -- lu -- jah.
	%{ 25 %} For the Lord God om -- ni -- po -- tent reign -- eth,
	%{ 27 %} Hal -- le -- lu -- jah, Hal -- le -- lu -- jah, Hal -- le -- lu -- jah.
	%{ 29 %} For the Lord God om -- ni -- po -- tent reign -- eth,
	%{ 31 %} Hal -- le -- lu -- jah.
	%{ 33 %} The king -- dom of this world is be -- come
	%{ 37 %} the king -- dom of our Lord and of his Christ, and of his Christ.
	%{ 43 %} And He shall reign for ev -- er and ev -- er.
	%{ 46 %} And He shall reign for ev -- er and ev -- er.
	%{ 49 %} And He shall reign for ev -- er and ev -- er.
	%{ 52 %} for ev -- er and ev -- er. Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
	%{ 55 %} for ev -- er and ev -- er. Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
	%{ 58 %} for ev -- er and ev -- er. Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
	%{ 61 %} for ev -- er and ev -- er. Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
	%{ 64 %} for ev -- er and ev -- er. Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
	%{ 67 %} King of kings, and Lord of lords.
	%{ 70 %} And He shall reign, and He __ shall reign,
	%{ 72 %} and He shall reign for ev -- er and ev -- er.
	%{ 74 %} King of kings, __ and Lord of lords. __
	%{ 78 %} And He shall reign for ev -- er, for ev -- er and ev -- er.
	%{ 81 %} King of __ kings, and Lord of __ lords.
	%{ 83 %} King of kings, and Lord of __ lords.
	%{ 85 %} And He shall reign for ev -- er and ev -- er, for ev -- er and ev -- er, for ev -- er and ev -- er.
	%{ 90 %} Hal -- le -- lu -- jah, Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
            Hal -- le -- lu -- jah,
  %{ 92 %} Hal -- le -- lu -- jah.
}


% Basso music
musicBass = \relative c {
  %{ 01-05 %} r1 | r1 | r1 | d4.^\f fis8 g d r4 | d4. fis8 g d r8 fis16 fis |
  %{ 06-10 %} g8 d r8 fis16 fis g8 d r8 fis | e (d a') a d,4 r | a'4. cis8 d a r4 | a4. cis8 d a r8 cis16 cis |
                d8 a r8 cis16 cis d8 a r8 cis |
  %{ 11-15 %} d (cis) b4 a4 r | a2 b4 cis4 | d8 d, d'4. d8 cis4 | b2 a4 r8 cis16 cis | d8 a r8 cis16 cis d8 a r8 cis16 cis |
  %{ 16-20 %} d8 a r8 cis16 cis d8 a r4 | d,2 e4 fis4 | g8 g, g'4. g8 fis4 | e2 d4 r8 fis16 fis | g8 d r8 fis16 fis g8 d r8 fis16 fis |
  %{ 21-25 %} g8 d r8 fis16 fis g8 d r4 | r1 | r1 | r4 r8 a'16 a16 fis8 d8 r4 | a'2 b4 cis4 |
  %{ 26-30 %} d8 d, d'4. d8 cis4 | b2 a4 r8 a16 a | fis8 d r8 d'16 d cis8 a r4 | r4 r8 d16 d cis8 a r8 d16 d |
                b8 g r8 e16 e a8 a r8 b16 b |
  %{ 31-35 %} g8 e16 e a8. g16 fis4 r8 d'16 d | b8 g16 g b8 cis d2 | r2 r4 d,4 ^\p | cis4 b4 a4 g'8. (fis16) | fis1 |
  %{ 36-40 %} r2 a,4. a8 | d2. d'4 ^\f | cis4 b4 a4 g8. (fis16) | fis4. e8 d4 b'4 | a4. fis8 g4 e4 |
  %{ 41-45 %} d4. a'8 ^\f d4 fis,4 | b4 d,4 g4 fis8 e | e2 d4 r | r4 r8 a'8 d d, r8 fis | b (gis) a4 r8 e8 d e |
  %{ 46-50 %} cis a' g a fis4 r8 fis8 | g d r4 r r8 g | a a, r8 a' fis d r8 d' | cis a r8 cis d d, r8 fis | b (gis) a d, e e r8 e |
  %{ 51-55 %} cis4 a4 r2 | r4 r8 cis'8 d a r8 cis | d a r8 cis16 cis d8 a r8 cis16 cis | d8 a r4 r2 | r4 r8 cis8 d a r8 cis |
  %{ 56-60 %} d a r8 cis16 cis d8 a r8 cis16 cis | d8 a r4 r2 | r4 r8 fis8 g d r8 fis | g d r8 fis16 fis g8 d r8 fis16 fis |
                g8 d r4 r2 |
  %{ 61-65 %} r4 r8 gis8 a e r8 gis | a e r8 gis16 gis a8 e r8 gis16 gis | a8 e r4 r2 | r4 r8 ais8 b fis r8 ais |
                b fis r8 ais16 ais b8 fis r8 ais16 ais |
  %{ 66-70 %} b4 b, r2 | r2 b'4 ^\ff b4 | cis4. cis8 d4 d,4 | a'4. a,8 ^\f a'4 cis,4 | fis4 a,4 d4 cis8 cis |
  %{ 71-75 %} b2 a4 r4 | r2 r8 d8 g fis | e4 fis8 (g) a4 g8 a | fis4 d4 d'4 ^\ff d4 | d4 r8 fis, g d r8 fis |
  %{ 76-80 %} g d r8 d' d4 d4 | d4 r8 fis,16 fis g8 d r8 fis16 fis | g8 d r8 d d'4 fis,4 | b4 d,4 g4 fis8 fis | e4 d8 d a'2 |
  %{ 81-85 %} d,4 r d d | d'4 r8 d,8 d4 d4 | d'4 r4 d, d | d' r8 d, d4 d | d' r8 d, d'4 fis, |
  %{ 86-90 %} b4 d, g fis8 fis | e4 d8 d a'2 | d,4 r8 fis g d r fis | g8 d r8 fis g d r fis | g d r fis16 fis g8 d r8 fis16 fis |
  %{ 90-94 %} g8 d r8 fis16 fis g8 d r8 fis16 fis | g8 d r4 r d4 | g2. g4 | d1-\fermata \bar "|."
}

% Basso lyrics
lyricsBass = \lyrics {
	%{ 04 %} Hal -- le -- lu -- jah, Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
	%{ 06 %} Hal -- le -- lu -- jah, Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
	%{ 09 %} Hal -- le -- lu -- jah, Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
	          Hal -- le -- lu -- jah,
	%{ 12 %} For the Lord God om -- ni -- po -- tent reign -- eth,
	%{ 14 %} Hal -- le -- lu -- jah, Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
	          Hal -- le -- lu -- jah.
	%{ 17 %} For the Lord God om -- ni -- po -- tent reign -- eth,
	%{ 19 %} Hal -- le -- lu -- jah, Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
	%{ 22 %} Hal -- le -- lu -- jah, Hal -- le -- lu -- jah.
	%{ 25 %} For the Lord God om -- ni -- po -- tent reign -- eth,
	%{ 27 %} Hal -- le -- lu -- jah, Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
	          Hal -- le -- lu -- jah, Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
	          Hal -- le -- lu -- jah, Hal -- le -- lu -- jah, Hal -- le -- lu -- jah.
	%{ 33 %} The king -- dom of this world is be -- come
	%{ 37 %} the king -- dom of our Lord and of his Christ, and of his Christ.
	%{ 41 %} And He shall reign for ev -- er and ev -- er, for ev -- er and ev -- er.
	%{ 45 %} And He shall reign, and He shall reign for ev -- er, for ev -- er, for ev -- er,
	%{ 48 %} for ev -- er and ev -- er,
	          for ev -- er, for ev -- er and ev -- er.
	%{ 52 %} for ev -- er and ev -- er. Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
	%{ 55 %} for ev -- er and ev -- er. Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
	%{ 58 %} for ev -- er and ev -- er. Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
	%{ 61 %} for ev -- er and ev -- er. Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
	%{ 64 %} for ev -- er and ev -- er. Hal -- le -- lu -- jah, Hal -- le -- lu -- jah.
	%{ 67 %} King of kings, and Lord of lords.
	%{ 69 %} And He shall reign for ev -- er and ev -- er.
	%{ 72 %} And He shall reign for ev -- er and ev -- er.
	%{ 74 %} King of Kings, for ev -- er and ev -- er, and Lord of lords.
	%{ 77 %} Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
	%{ 78 %} And He shall reign for ev -- er, for ev -- er and ev -- er.
	%{ 81 %} King of kings, and Lord of lords.
	%{ 83 %} King of kings, and Lord of lords.
	%{ 85 %} And He shall reign for ev -- er, for ev -- er and ev -- er,
	%{ 88 %} for ev -- er and ev -- er, for ev -- er and ev -- er.
	%{ 90 %} Hal -- le -- lu -- jah, Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
	          Hal -- le -- lu -- jah,
  %{ 92 %} Hal -- le -- lu -- jah.
}

% 10. Layout
\score {
  \new ChoirStaff <<
    \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S." } <<
      \new Voice = "Soprano" { \clef treble \global \musicSoprano }
      \new Lyrics \lyricsto Soprano \lyricsSoprano
    >>
    \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A." } <<
      \new Voice = "Alto" { \clef treble \global \musicAlto }
      \new Lyrics \lyricsto Alto \lyricsAlto
    >>
    \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T." } <<
      \new Voice = "Tenor" { \clef "violin_8" \global \musicTenor }
      \new Lyrics \lyricsto Tenor \lyricsTenor
    >>
    \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B." } <<
      \new Voice = "Bass" { \clef bass \global \musicBass }
      \new Lyrics \lyricsto Bass \lyricsBass
    >>
  >>
}

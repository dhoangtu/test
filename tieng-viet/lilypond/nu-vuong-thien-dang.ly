%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nội dung tài liệu
% 1. Cài đặt chung
% 2. Nhạc phiên khúc
% 3. Nhạc điệp khúc
% 4. Lời
% 5. Bố trí
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 1. Cài đặt chung
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\version "2.18.2"

\header {
  title = "Nữ Vương Thiên Đàng"
  composer = "Ngô Duy Linh"
  tagline = ##f
}

global = {
  \key c \major
  \time 2/4
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
}

smallNote = #(define-music-function
  (parser location note)
  (ly:music?)
  #{
    \tweak font-size #-3
    #note
  #}
)

repeatChunk = \relative c' {
  <\smallNote c \smallNote c' e>8
  <\smallNote g' \smallNote c e>4.
  <\smallNote g \smallNote c e>8
  <\smallNote g \smallNote b d>4
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 2. Nhạc phiên khúc
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
verseMusic = \relative c' {
  \partial 4 g'8. g16
  c4 a4 % 1
  g4 \acciaccatura e8 g8. e16 % 2
  c4 r8 \repeatChunk % 3, 4
  g'8. c16 % 5
  b4 d4 % 6
  e8. d16 c8. a16 % 7
  g4 r8 \repeatChunk r4 % 8, 9, 10
  
  g4 a8 c16 a16 % 11
  g4. a8 % 12
  g4 c8 d8 % 13
  e4 r8 \repeatChunk r4 % 14, 15, 16
  
  a,4 e8 e8 % 17
  c4 b8 c8 % 18
  b4 r8 \repeatChunk r4 % 19, 20, 21
  
  c8. e16 e8. c16 % 22
  d8. d16 e8 d16 r16 % 23
  d8. c16 b8. a16 % 24
  g4 r8 \repeatChunk r8 g'8 % 25, 26, 27
  c8. d16 e8. d16 % 28
  c4 r8
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 3. Nhạc điệp khúc
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
musicUp = \relative c' {
  \set Score.currentBarNumber = #30
  \partial 8 c'8 % 29
  e8. f16 g8. f16 % 30
  e4 r8 e8 % 31
  e8. e16 d8 r16 f16 % 32
  f8. f16 e8 r8 % 33
  g16(a16 g16 f16) e16(d16 e16 f16) % 34
  g8(f8 e8 d8) % 35
  c2( % 36
  c4) \bar "|."
}

musicDown = \relative c' {
  \partial 8 a'8 % 30
  c8. d16 e8. d16 % 31
  c4 r8 c8 % 32
  c8. c16 b8 r16 d16 % 33
  d8. d16 c8 r8 % 34
  b16(d16 e16 d16) c16(b16 c8) % 35
  a4(b4) % 36
  c2( % 37
  c4) \bar "|."
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 4. Lời
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
verseLyric = \lyricmode {
  Lạy Nữ Vương Thiên Đàng hãy vui mừng. Al -- le -- lu -- ia.
  Vì đấng Mẹ đã đáng cưu mang trong lòng. Al -- le -- lu -- ia.

  Người đã sống lại thật như lời đã phán hứa. Al -- le -- lu -- ia.
  Xin cầu cùng Chúa cho chúng con. Al -- le -- lu -- ia.

  Lạy Thánh Nữ Đồng Trinh Ma -- ri -- a hãy hỉ hoan khoái lạc. Al -- le -- lu -- ia.
  Vì Chúa đã sống lại thật.
}

dualLyric = \lyricmode {
  Vì Chúa đã sống lại thật. Al -- le -- lu -- ia.
  Al -- le -- lu -- ia. Al -- le -- lu -- ia.
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 5. Bố trí
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\score {
  \new ChoirStaff <<
    \new Staff = verses <<
      \new Voice = "verse" {
        \global \stemNeutral \verseMusic
      }
    >>
    \new Lyrics \lyricsto verse \verseLyric
  >>
  \layout {
    \context {
      \Lyrics
      \override VerticalAxisGroup.staff-affinity = ##f
      \override VerticalAxisGroup.staff-staff-spacing =
        #'((basic-distance . 0)
     (minimum-distance . 1)
     (padding . 1))
    }
    \context {
      \Staff
      \override VerticalAxisGroup.staff-staff-spacing =
        #'((basic-distance . 0)
     (minimum-distance . 1)
     (padding . 1))
    }
  }
}

\score {
  \new ChoirStaff <<
    \new Staff = chorus <<
      \new Voice = "verseUp" {
        \voiceOne \global \stemUp \slurUp \musicUp
      }
      \new Voice = "verseDown" {
        \voiceTwo \global \stemDown \slurDown \musicDown
      }
    >>
    \new Lyrics \lyricsto "verseUp" \dualLyric
  >>
  \layout {
    \context {
      \Lyrics
      \override VerticalAxisGroup.staff-affinity = ##f
      \override VerticalAxisGroup.staff-staff-spacing =
        #'((basic-distance . 0)
     (minimum-distance . 1)
     (padding . 1))
    }
    \context {
      \Staff
      \remove "Time_signature_engraver"
      \override VerticalAxisGroup.staff-staff-spacing =
        #'((basic-distance . 0)
     (minimum-distance . 1)
     (padding . 1))
    }
  }
}

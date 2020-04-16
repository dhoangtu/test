%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nội dung tài liệu
% 1. Cài đặt chung
% 2. Nhạc phiên khúc
% 3. Nhạc điệp khúc Soprano
% 4. Nhạc điệp khúc Basso
% 5. Lời phiên khúc
% 6. Lời điệp khúc
% 7. Bố trí
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 1. Cài đặt chung
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\version "2.18.2"

\header {
  title = "Xin Vâng"
  composer = "LM Mi Trầm, PK3: LM Nguyễn Duy"
  tagline = ##f
}

global = {
  \key g \major
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 2. Nhạc phiên khúc
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
nhacPhienKhuc = \relative c' {
  \partial 4 d4
  %{ 01 %} g4. b,8
  %{ 02 %} d8 g8 a8 g8
  %{ 03 %} e4. b8
  %{ 04 %} d8 g8 e8 d8
  %{ 05 %} b4 \tuplet 3/2 4 {b8 g8 b8}
  %{ 06 %} d8 d8 e8 d8
  %{ 07 %} d2(
  %{ 08 %} d4) d4
  %{ 09 %} a'4. g8
  %{ 10 %} a8 a8 g8 a8
  %{ 11 %} b4. g8
  %{ 12 %} c8 c8 b8 c8
  %{ 13 %} d4 \tuplet 3/2 4 {d8 d,8 d8}
  %{ 14 %} a'8 a8 b8 a8
  %{ 15 %} g2 (g4) \bar "||"
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 3. Nhạc điệp khúc Soprano
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
nhacDiepKhucSoprano = \relative c' {
  \set Score.currentBarNumber = #16
  \partial 4 d'4
  %{ 16 %} d4. b16 c16
  %{ 17 %} d8 d8 e8 d8
  %{ 18 %} c4 r8 c8
  %{ 19 %} c8 c8 c8 a16 a16
  %{ 20 %} b4 \breathe d4
  %{ 21 %} d4. b16 c16
  %{ 22 %} d8 d8 e8 d8
  %{ 23 %} c4 r8 c8
  %{ 24 %} c8 c8 c8 a16 b16
                  g4 \bar "|."
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 4. Nhạc điệp khúc Basso
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
nhacDiepKhucBasso = \relative c' {
	\override NoteHead.font-size = #-2
  \partial 4 b'4
  %{ 16 %} b4. g16 a16
  %{ 17 %} b8 b8 c8 b8
  %{ 18 %} a4 r8 a8
  %{ 19 %} a8 a8 a8 fis16 fis16
  %{ 20 %} g4 b4
  %{ 21 %} b4. g16 a16
  %{ 22 %} b8 b8 c8 b8
  %{ 23 %} a4 r8 a8
  %{ 24 %} a8 a8 a8 d,16 d16
                  b4 \bar "|."
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 5. Lời phiên khúc
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
loiPhienKhucMot = \lyricmode {
  \set stanza = #"1."
  %{ 01 %} Mẹ ơi, đời con dõi bước theo Mẹ, lòng con quyết noi gương Mẹ, xin Mẹ dạy con hai tiếng Xin Vâng.
  %{ 08 %} Mẹ ơi, đường đi trăm ngàn gian khó, hiểm nguy giăng tràn đây đó, xin Mẹ dạy con hai tiếng Xin Vâng.
}

loiPhienKhucHai = \lyricmode {
  \set stanza = #"2."
  %{ 01 %} Ngày xưa, Mẹ hằng tin tưởng Chúa Trời, Mẹ luôn sống vui giữa đời, chấp nhận hy sinh yêu Chúa không ngơi.
  %{ 08 %} Ngày nay, niềm tin của Mẹ rực sáng, dội vang theo cùng năm tháng, với Mẹ đoàn con thưa tiếng Xin Vâng.
}

loiPhienKhucBa = \lyricmode {
  \set stanza = #"3."
  %{ 01 %} Mẹ ơi, Mẹ tin nơi Chúa an bài, Mẹ xin phúc ân cho đời, nơi Mẹ đoàn con xin đến nương thân.
  %{ 08 %} Mẹ ơi, niềm vui bên Mẹ chan chứa, được luôn trung thành theo Chúa, xin Mẹ dạy con hai tiếng Xin Vâng.
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 6. Lời điệp khúc
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
loiDiepKhuc = \lyricmode {
  \set stanza = #"ĐK:"
  %{ 16 %} Xin Vâng, Mẹ dạy con hai tiếng Xin Vâng, hôm qua hôm nay và ngày mai.
  %{ 20 %} Xin Vâng, Mẹ dạy con hai tiếng Xin Vâng, hôm nay tương lai và suốt đời.
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 7. Bố trí
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\score {
  \new ChoirStaff <<
    \new Staff = verses <<
      \new Voice = "verse" {
        \global \stemNeutral \nhacPhienKhuc
      }
    >>
    \new Lyrics \lyricsto verse \loiPhienKhucMot
    \new Lyrics \lyricsto verse \loiPhienKhucHai
    \new Lyrics \lyricsto verse \loiPhienKhucBa
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
      \new Voice = "sopranos" {
        \voiceOne \global \stemUp \nhacDiepKhucSoprano
      }
      \new Voice = "basses" {
        \voiceTwo \global \stemDown \nhacDiepKhucBasso
      }
    >>
    \new Lyrics = basses
    \context Lyrics = basses \lyricsto basses \loiDiepKhuc
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

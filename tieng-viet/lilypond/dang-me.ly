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
  title = "Dâng Mẹ"
  composer = "Hoài Đức"
  tagline = ##f
}

global = {
  \key g \major
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 2. Nhạc điệp khúc
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
sopChorus = \relative c' {
                    \partial 2 e8 e8 b'8 b8
  %{ 01 %} b4 b8 d8 d8(e16 d16) b8 a8 |
  %{ 02 %} b2 g8 a8 a8 b8 |
  %{ 03 %} b4 g8 a16(g16) e4 g8 g16(a16) |
  %{ 04 %} b2 e,8 e8 b'8 b8 |
  %{ 05 %} b4 b8 d8 d8(e16 d16) b8 a8 |
  %{ 06 %} b2 g8 b8 g8 b8 |
  %{ 07 %} a4 e8 e8 g4 d8 d8 |
                    e2 r4 \bar "|."
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 3. Nhạc phiên khúc
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
verseMusic = \relative c' {
  \set Score.currentBarNumber = #8
                    \partial 4 e8 e16(d16)
  %{ 08 %} b4 e8 e8 d8(e8) e8 g8 |
  %{ 09 %} e2 r4 g8 a8 |
  %{ 10 %} b4 g8 fis8 e8(g8) d'8 b8 |
  %{ 11 %} b2 r4 b8 a8 |
  %{ 12 %} g4 a8 a8 b8(d8) e8 d8 |
  %{ 13 %} e2 r4 d8 b8 |
  %{ 14 %} a4 g8 a8 a8(b8) g8 d8 |
                  e2 \bar "||"
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 4. Lời điệp khúc
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
choruslyric = \lyricmode {
  \set stanza = #"ĐK:"
   Lạy Mẹ Ma -- ri -- a Mẹ Thiên Chúa Mẹ đồng trinh, đoàn con chung tiếng hát chung tấm lòng dâng đời sống.
   Lạy Mẹ Ma -- ri -- a Mẹ nhân ái Mẹ hiển vinh, Mẹ chính là Nữ Vương là trạng sư, là Mẹ con.
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 5. Lời phiên khúc
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
verseOne = \lyricmode {
  \set stanza = #"1."
  Con dâng Mẹ đây tâm hồn đây trí khôn, cả dĩ vãng cả hiên tại với tương lai.
  Đức thiện toàn con cương quyết gắng đi tới, trông lên Mẹ là gương mẫu của đời con.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  Yêu thanh bình yêu vâng lời, yêu khiết trinh, và yêu sống trên con đường Chúa đi xưa,
  Xứng con Mẹ con vui bước tới Thiên Chúa, hy sinh nhiều vì bác ái quên lợi danh.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  Con nguyện cầu, con trung thành, con quyết tâm, Mẹ nhận lấy cả tâm hồn kính dâng lên.
  Sống bên Mẹ muôn ơn thánh giúp con tiến. Xin che chở giờ sau hết qua trần gian.
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 6. Bố trí
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\score {
  \new ChoirStaff <<
    \new Staff = chorus <<
      \new Voice = "sopranos" {
        \global \stemNeutral \sopChorus
      }
    >>
    \new Lyrics = sopranos
    \context Lyrics = sopranos \lyricsto sopranos \choruslyric
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
    \new Staff = verses <<
      \new Voice = "verse" {
        \global \stemNeutral \verseMusic
      }
    >>
    \new Lyrics \lyricsto verse \verseOne
    \new Lyrics \lyricsto verse \verseTwo
    \new Lyrics \lyricsto verse \verseThree
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

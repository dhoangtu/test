%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nội dung tài liệu
% 1. Cài đặt chung
% 2. Nhạc phiên khúc
% 3. Nhạc điệp khúc
% 4. Lời phiên khúc
% 5. Lời điệp khúc
% 6. Bố trí
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 1. Cài đặt chung
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\version "2.18.2"

\header {
  title = "Tràng Hoa Mân Côi"
  composer = "Phạm Xuân Chiến"
  tagline = ##f
}

global = {
  \key f \major
  \time 2/4
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
                    \partial 4 c'8 c8
  %{	01	%} c4 a8(bes8) |
  %{	02	%} c4 a8 g8 |
  %{	03	%} f8. f16 bes8 bes8 %3
  %{	04	%} bes4 bes8 a8 |
  %{	05	%} g8. g16 c8 c8 |
  %{	06	%} c4 \breathe c8 bes8 |
  %{	07	%} a8. g16 \acciaccatura c8 d8 c8 |
  %{	08	%} a2( |
  %{	09	%} a4) c8 c8 |
  %{	10	%} c4 a8(bes8) |
  %{	11	%} c4 a8 g8 |
  %{	12	%} f8. f16 bes8 bes8 |
  %{	13	%} bes4 bes8 bes16 a16 |
  %{	14	%} g8. g16 c8 c16 c16 |
  %{	15	%} c4 c8 bes8 |
  %{	16	%} a8. g16 bes8 a16(g16) |
  %{	17	%} f2( |
                    f4) \bar "|."
}

bassChorus = \relative c' {
	\override NoteHead.font-size = #-2
                    \partial 4 a'8 a8
  %{	01	%} a4 f8(g8) |
  %{	02	%} a4 f8 e8 |
  %{	03	%} d8. d16 g8 g8 |
  %{	04	%} g4 g8 f8 |
  %{	05	%} e8. e16 a8 a8 |
  %{	06	%} a4 a8 g8 |
  %{	07	%} f8. e16 \acciaccatura a8 bes8 a8 |
  %{	08	%} f2( |
  %{	09	%} f4) a8 a8 |
  %{	10	%} a4 f8(g8) |
  %{	11	%} a4 f8 e8 |
  %{	12	%} d8. d16 g8 g8 |
  %{	13	%} g4 g8 g16 f16 |
  %{	14	%} e8. e16 a8 a16 a16 |
  %{	15	%} a4 a8 g8 |
  %{	16	%} f8. e16 g8 f16(e16) |
  %{	17	%} f2( |
                    f4) \bar "|."
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 3. Nhạc phiên khúc
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
verseMusic = \relative c' {
  \set Score.currentBarNumber = #18
                    \partial 4 c8 c8
  %{	18	%} a'8. a16 a8 a8 |
  %{	19	%} a4 a8 c8 |
  %{	20	%} a8. g16 g8 f8 |
  %{	21	%} a4 c,8 c8 |
  %{	22	%} g'8. g16 g8 g8 |
  %{	23	%} g4 g8 bes8 |
  %{	24	%} a8. g16 g8 f8 |
  %{	25	%} f2( |
                    f4) \bar "||"
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 4. Lời điệp khúc
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
choruslyric = \lyricmode {
  \set stanza = #"ĐK:"
  Ma -- ri -- a Mẹ ơi! Con dâng Mẹ tràng hoa Mân Côi, con dâng Mẹ lời kinh ca vui, kinh Kính Mừng Mẹ Ma -- ri -- a.
  Ma -- ri -- a Mẹ ơi! Theo chân Mẹ đời không đơn côi, xin vâng như Mẹ lòng con luôn tin yêu.
  Mong Mẹ hiền trợ giúp con hèn.
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 5. Lời phiên khúc
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
verseOne = \lyricmode {
  \set stanza = #"1."
  Đường trần gian bao nhiêu đau thương, bao đắng cay đang giăng chờ đón.
  Nguyện Mẹ thương giơ tay ban ơn phù giúp con tin yêu trọn đời.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  Này người ơi ta nhanh chân lên, mau đến bên ngai thiêng Mẹ thánh.
  Nguyện Mẹ thương ban muôn ơn thiêng để chúng con xin vâng trọn đời.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  Này tràng hoa mân côi dâng lên chan chứa bao tâm tình trìu mến.
  Nguyện Mẹ thương ban muôn ơn thiêng và giúp con theo gương Mẹ hiền.
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 6. Bố trí
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\score {
  \new ChoirStaff <<
    \new Staff = chorus <<
      \new Voice = "sopranos" {
        \voiceOne \global \stemUp \sopChorus
      }
      \new Voice = "basses" {
        \voiceTwo \global \stemDown \bassChorus
      }
    >>
    \new Lyrics = basses
    \context Lyrics = basses \lyricsto basses \choruslyric
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

\paper {
  #(set-paper-size "a4")
  top-margin = 15\mm
  bottom-marign = 15\mm
  left-margin = 20\mm
  right-margin = 20\mm
  indent = #0
  #(define fonts
	 (make-pango-font-tree "Times New Roman"
	 		       "Times New Roman"
			       "Times New Roman"
			       (/ 20 20)))
}

\version "2.18.2" % necessary for upgrading to future LilyPond versions.
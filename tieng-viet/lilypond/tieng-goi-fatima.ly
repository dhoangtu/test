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
  title = "Tiếng Gọi Fatima"
  composer = "Phanxicô"
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 2. Nhạc phiên khúc
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
verseMusic = \relative c' {
                    \partial 4 e8 e16(d16)
  %{	01	%} c8(e8) a8 a8 |
  %{	02	%} a4 c8 c16(b16) |
  %{	03	%} a8(c8) d8 d8 |
  %{	04	%} d2( |
  %{	05	%} d8) d8 e16(f16) e16(d16) |
  %{	06	%} c8 \breathe a8 b16(c16) b16(a16) |
  %{	07	%} c4. c8 |
  %{	08	%} d,8( e8) a8 c8 |
  %{	09	%} b4. b16(a16) |
  %{	10	%} g8 a8 \acciaccatura f8 e8 g16(a16) |
  %{	11	%} a2( |
                    a4) \break \bar "||"
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 3. Nhạc điệp khúc Soprano
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
sopChorus = \relative c' {
                    \partial 4 c'8 e8
  %{	12	%} c8 d8 d8 e8 |
  %{	13	%} e4 \breathe e8 d8 |
  %{	14	%} d8 b8 b8 c8 |
  %{	15	%} c2( |
  %{	16	%} c4) c8 b8 |
  %{	17	%} a8 gis8 a8 f8 |
  %{	18	%} e4 \breathe e8 d8 |
  %{	19	%} b'8 b16(c16) b16(a16) g8 |
  %{	20	%} a2( |
                    a4) \break \bar "|."
}

bassChorus = \relative c' {
	\override NoteHead.font-size = #-2
  \set Score.currentBarNumber = #12
                    \partial 4 a'8 gis8
  %{	12	%} a8 a8 b8 c8 |
  %{	13	%} c4 \breathe c8 b8 |
  %{	14	%} b8 gis8 gis8 a8 |
  %{	15	%} a2( |
  %{	16	%} a4) a8 g8 |
  %{	17	%} f8 e8 e8 d8 |
  %{	18	%} c4 \breathe c8 b8 |
  %{	19	%} d8 d8 e8 e16(d16) |
  %{	20	%} c2( |
                    c4) \break \bar "|."
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 5. Lời phiên khúc
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
verseOne = \lyricmode {
  \set stanza = #"1."
  Xưa trong làng Fa -- ti -- ma, có Đức Mẹ Ma -- ri -- a.
  Mẹ đến với đời, Mẹ nói với người, những lời bao sắt son, những lời của Mẹ ru con.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  Đây tiếng gọi Fa -- ti -- ma nói với người muôn phương xa.
  Hãy đến với Mẹ, hãy sống trong Mẹ, nghe lời mẹ dẫn đưa, nhớ lời của Mẹ khi xưa.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  Nghe tiếng gọi Fa -- ti -- ma bao tấm lòng tươi như hoa.
  Xin bước quay về, thôi hết não nề, theo mẹ trên thế gian,có Mẹ dắt dìu ủi an.
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 6. Lời điệp khúc
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
choruslyric = \lyricmode {
  \set stanza = #"ĐK:"
  Mẹ nhắc người ăn năn thống hối, hãy siêng năng lần hạt Mân Côi.
  Tháng năm qua Mẹ đau khổ nhiều. Hãy sùng kính Trái Tim Mẹ yêu.
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 7. Bố trí
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
      \remove "Time_signature_engraver"
      \override VerticalAxisGroup.staff-staff-spacing =
        #'((basic-distance . 0)
	   (minimum-distance . 1)
	   (padding . 1))
    }
  }
}

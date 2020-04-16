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
  title = "Nữ Vương hòa bình"
  composer = "Hải Linh"
  tagline = ##f
}

global = {
  \key f \major
  \time 2/4
  \stemNeutral
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
% 2. Nhạc điệp khúc
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
sopChorus = \relative c' {
  %{	01	%} a'2^\mf |
  %{	02	%} f4 c'8(d8) |
  %{	03	%} c2 \breathe |
  %{	04	%} c8^\f(f8 c8 d8) |
  %{	05	%} c4 a4 |
  %{	06	%} a2 \breathe |
  %{	07	%} g8(a8 c8 a8) |
  %{	08	%} g4 f4 |
  %{	09	%} f2( |
  %{	10	%} f4) r4 |
  %{	11	%} g4^\p g8 g8 |
  %{	12	%} f4 g4^\< |
  %{	13	%} a2 |
  %{	14	%} c4^\mp\! c8 d16(c16) |
  %{	15	%} a4 c4 |
  %{	16	%} d2 \breathe |
  %{	17	%} d8^\f(f4) d8 |
  %{	18	%} c4 a4 |
  %{	19	%} c2( |
  %{	20	%} c4) a4^\p |
  %{	21	%} g4.^\<(a8) |
  %{	22	%} bes8\!(a8) g8.^\> f16 |
  %{	23	%} f2( |
  %{	24	%} f4\!) c'4^\f |
  %{	25	%} c2( |
  %{	26	%} c4) \breathe c4 |
  %{	27	%} c2( |
  %{	28	%} c4) \breathe <a f>8.-> <f d>16-> |
  %{	29	%} <d' bes>4^\ff <d bes>8. <d bes>16 |
  %{	30	%} <d bes>4 <c a>4 |
  %{	31	%} <c a>2( |
  %{	32	%} <c a>4) \breathe c4^\f |
  %{	33	%} c2( |
  %{	34	%} c4) \breathe c4 |
  %{	35	%} c2( |
  %{	36	%} c4) \breathe <a f>8.-> <f d>16-> |
  %{	37	%} <d' bes>4.^\f <c a>8 |
  %{	38	%} <c a>2 |
  %{	39	%} <c g>2 |
  %{	40	%} f,2\fermata \bar "|." \break
}

basseChorus = \relative c' {
  %{	01	%} a2^\mf |
  %{	02	%} f4 c'8(d8) |
  %{	03	%} c2 \breathe |
  %{	04	%} a4.^\f(bes8) |
  %{	05	%} a4 f4 |
  %{	06	%} f2 \breathe |
  %{	07	%} c4.(f8) |
  %{	08	%} e4 <c a f>4 |
  %{	09	%} <c a f>2( |
  %{	10	%} <c a f>4) r4 |
  %{	11	%} c4^\p c8 c8 |
  %{	12	%} a4 c4 |
  %{	13	%} f2 |
  %{	14	%} a4^\mp a8 bes16(a16) |
  %{	15	%} f4 a4 |
  %{	16	%} bes4 f4-> |
  %{	17	%} bes4.^\f bes8 |
  %{	18	%} a4 f4 |
  %{	19	%} a4 <bes g>8^\> <a f>8 |
  %{	20	%} <g e>4 f4^\p\! |
  %{	21	%} c2^\< |
  %{	22	%} d8\!(f8) <e c>8.^\> <c a f>16 |
  %{	23	%} <c a f>2( |
  %{	24	%} <c a f>4)\! r4 |
  %{	25	%} r4 <a' f>8^\mf <bes g>16 <a f>16 |
  %{	26	%} <g c>4 r4 |
  %{	27	%} r4 <g c,>8 <f a,>16 <g c,>16 |
  %{	28	%} <a f>4 r4 |
  %{	29	%} <f bes,>2 |
  %{	30	%} <f bes,>4 <f bes,>8. <f bes,>16 |
  %{	31	%} <f c f,>2( |
  %{	32	%} <f c f,>4) r4 |
  %{	33	%} r4 <a f>8 <bes g>16 <a f>16 |
  %{	34	%} <g c,>4 r4 |
  %{	35	%} r4 <g c,>8 <f a,>16 <g c,>16 |
  %{	36	%} <a f>4 r4 |
  %{	37	%} r4 <f bes,>8^\f <f c>8 |
  %{	38	%} <f c>2 |
  %{	39	%} <f c>2 |
  %{	40	%} <a f c f,>2\fermata \bar "|." \break
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 3. Nhạc phiên khúc
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
verseMusic = \relative c' {
  \bar "" \set Score.currentBarNumber = #41
	%{	40	%} d8^\p(f4) c8 |
  %{	41	%} a'4 g4 |
  %{	42	%} f2( |
  %{	43	%} f4) r4 |
  %{	44	%} a4.^\mp f8 |
  %{	45	%} d'4 c4 |
  %{	46	%} c2( |
  %{	47	%} c4) r4 |
  %{	48	%} c8^\f f8 c8 d8 |
  %{	49	%} c4 a4 |
  %{	50	%} g4.(a8) |
  %{	51	%} f4^\p f8 f8 |
  %{	52	%} d4 f8(g8) |
  %{	53	%} c2( |
  %{	54	%} c4) r4 \bar "||"
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 4. Lời điệp khúc
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
chorusLyricSoprano = \lyricmode {
  \set stanza = #"ĐK:"
  Kính mừng Nữ Vương, Nữ Vương hòa bình, Nữ Vương hòa bình.
  Đây bao tâm hồn thao thức, dân con đất Việt nao nức cất tiếng ca mừng vui kính chào Nữ Vương hòa bình.
  Tung hô... tung hô... Mẹ là sáng khắp đất nước bao la.
  Tung hô... tung hô... đem nguồn sống yên vui chan hòa.
}

chorusLyricBasse = \lyricmode {
  \set stanza = #"ĐK:"
  Kính mừng Nữ Vương, Nữ Vương hòa bình, Nữ Vương hòa bình.
  Đây bao tâm hồn thao thức, dân con đất Việt nao nức cùng cất tiếng ca mừng vui cất tiếng ca kính chào Nữ Vương hòa bình.
  Mẹ Ma -- ri -- a Mẹ đầy ơn phúc Tung hô Ma -- ri -- a.
  Mẹ Ma -- ri -- a Mẹ đầy ơn phúc trong an vui chan hòa.
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 5. Lời phiên khúc
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
verseOne = \lyricmode {
  \set stanza = #"1."
  Mẹ chẳng vướng tội truyền. Bông huệ ngát hương thiên.
  Mẹ ví như ánh trăng diệu huyền. Êm như cung đàn thần tiên.
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  Mẹ về với giang sơn. Xin Mẹ xuống ơn thiêng.
  Cho nước Nam thoát cơn nguy nan. Cho dân thấy ngày bình an.
}

verseThree = \lyricmode {
  \set stanza = #"3."
  Mẹ là sức siêu nhiên. Dắt dìu chúng con liên.
  Cho giáo dân khắp nơi trung kiên. Cho muôn tông đồ thành tín.
}

verseFour = \lyricmode {
  \set stanza = #"4."
  Mẹ là sáng Phúc Âm. Soi đường lối muôn dân.
  Vun tưới cây Đức Tin rườm rà, xinh tươi muôn màu muôn hoa.
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 6. Bố trí
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\score {
  \new ChoirStaff <<
    \new Staff = chorusSoprano <<
      \clef "treble"
      \new Voice = "sopranos" {
        \global \sopChorus
      }
      \new Lyrics = sopranos
      \context Lyrics = sopranos \lyricsto sopranos \chorusLyricSoprano
    >>

    \new Staff = chorusBasse <<
      \clef "bass"
      \new Voice = "basse" {
        \global \basseChorus
      }
      \new Lyrics = basse
      \context Lyrics = basse \lyricsto basse \chorusLyricBasse
    >>
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
    \new Lyrics \lyricsto verse \verseFour
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

%{


Am 32                  Em 42
El fuego se levanta   Limpiando mi alma
F  43               G 30
El ocaso observa Y cambia de color
                   (BIS)


%}

\version "2.20.0"  % necessary for upgrading to future LilyPond versions.


\header {
  title = "Fuego Purificame"
  composer = "Luis Bermudez"
}



melody = \relative c'' {

  \key c \major
  \time 4/4
 r4  r4  r4 a4 
 a8 a8 a8 a8 c4 a4
 g8 f8 f8 f8 a4 f4
 f4 f8 f8 f8 f8 a4 f4 
 g4 b8 b8 b8 b8 b4    

}



text =  \lyricmode { 
  \time 4/4
 El 
 fue go se le van ta 
 lim pian do   mi al ma,  
 el oca so obser va
 y cam bia de  e color
      


}




\score {
  <<
	\time 4/4
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Voice ="one"  \melody 
    \new Lyrics \lyricsto "one" \text 
  >>
  \layout { }
  \midi { }
}


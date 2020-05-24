%{


Am 32                  Em 42
El fuego se levanta   Limpiando mi alma
F  43               G 30
El ocaso observa Y cambia de color
                   (BIS)


<<
  \chords { c2 g:sus4 f e }
  \relative c'' {
    a4 e c8 e r4
    b2 c4( d)
  }
  \addlyrics { One day this shall be free __ }


https://music.stackexchange.com/questions/50976/lilypond-how-can-i-put-the-chord-names-above-the-right-notes
>>

%}

\version "2.20.0"  % necessary for upgrading to future LilyPond versions.


\header {
  title = "Fuego Purificame"
  composer = "Luis Bermudez"
}


harmony_one = \chordmode {
  e1:m
  a1:m  
  e1:m
  f1
  g1 
}

harmony_chorus = \chordmode {
 a:m
 e:m  
}


harmony_chorus_end = \chordmode {
 a1:m e2:7  a2:m  
}


melody = \relative c' {

  \time 4/4
 r4 r4 r4 r8 e8
 a8 a8 a8 a8 c4 a8 a8
 e4 e8 e8 g4 e4
 f8 f8 f8 f8 a4 f8 a8
 b8 b8 b8 b8 b2    

}



text =  \lyricmode { 
  \time 4/4
 El 
 fue go se le van ta 
 lim pian do   mi al ma,  
 el o ca so obser va y
 cam bia de co lor.


}

text_two = \lyricmode { 

    
{\skip 2} 
Que ma mi is pe naas, an
gus tias y mie dos
Ce ni zas en_el vien to, con viér te las en flor


}

text_three = \lyricmode { 

    
{\skip 2} 

A le gra mi tam bor, a
le gra mi can ción

En cien de mi al ma y trá eme el a mor


}


chorus_melody  =  
	{

 	
  	 c4. c8 c8 c8 c8 c8 
  	g4 g8 g8  r2

}

chorus_melody_end  =  
	{
  	 c4. c8 c8 c8 c8 c8 
  	aes4 aes4 a2
}

chours_text = \lyricmode {
Fue go fue go pu ri fi ca me.

}

chours_text_end = \lyricmode {
Fue go fue go pu ri fica me.

}

complete_song_melody =\relative c'' {

	 \repeat volta 2  \melody 
	 
	  \repeat unfold 2 \chorus_melody
	\chorus_melody_end
	
	 \repeat volta 2  \melody 
	 
	\repeat unfold 2 \chorus_melody
	\chorus_melody_end
	
	 \repeat volta 2  \melody 
	 
	\repeat unfold 2 \chorus_melody
	\chorus_melody_end


}

complete_song_lyrics ={

	\text 
	 \repeat unfold 3  \chours_text
        \text_two
         \repeat unfold 3  \chours_text
        \text_three
         \repeat unfold 3  \chours_text

}

complete_harmony ={
  \harmony_one
  
  \repeat unfold 2 \harmony_chorus
   \harmony_chorus_end 
  
  \harmony_one
  
  \repeat unfold 2 \harmony_chorus
  \harmony_chorus_end 
  
   \harmony_one
   
  \repeat unfold 2 \harmony_chorus
  \harmony_chorus_end 

}

\score {

<<

    \new ChordNames {
      \set chordChanges = ##t
      \complete_harmony

    }

      \new Voice ="one"  \complete_song_melody


    \new Lyrics \lyricsto "one" \complete_song_lyrics 
 
>>
	\layout { }
         \midi { 
	 \tempo 4 = 100
	}

}

%{

\score {
  <<
	\time 4/4
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Voice ="one"  \melody 
    \new Lyrics \lyricsto "one" \text 
	\new Voice ="chorus"  \chorus_melody 
    \new Lyrics \lyricsto "chorus" \chours_text 

  >>
  \layout { }
  \midi { 

	 \tempo 4 = 100
	}
}


%}

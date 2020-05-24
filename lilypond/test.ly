\version "2.20.0"  % necessary for upgrading to future LilyPond versions.

\header {
  title = "Fuego Purificame"
  composer = "Luis Bermudez"
}

\score {
  
  <<



\chords {
   
   \set chordChanges = ##t
  
  
 }

  \relative c'' {

       a4. a8 a8 a8 a8 a8 
  	e4 e8 e8  
  }
  \addlyrics { fue go fue go pu ri fi ca me }
  >>
  \layout{}
  \midi { \tempo 4 = 100 }
  
}
instance creation
randomSpell
	^ self new
		fileName: 'spell' , 6 atRandom printString;
		position: 0@0 ;
		yourself
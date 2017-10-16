accessing
spriteDescription
	"first row index, last row index, row length"
	^ { 
		'Spellcast' -> #(1 4 7) .
		'Thurst' -> #(5 8 8) .
		'Walk' -> #(9 12 9) .
		'Slash' -> #(13 16 6) .
		'Shoot' ->#(17 20 13) .
		'Hurt' -> #(21 21 6) .
		'Extra' -> #(22 25 "6 or height depending on file size" 6 8)
	}
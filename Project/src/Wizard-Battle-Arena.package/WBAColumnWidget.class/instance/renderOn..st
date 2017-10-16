rendering
renderOn: canvas
	widgets do: [ :w | 
		w renderOn: canvas.
		canvas pathTransform translateX: 0 Y: space ].
	canvas pathTransform translateX: 0 Y: (space * widgets size negated).
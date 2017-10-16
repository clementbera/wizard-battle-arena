as yet unclassified
renderOn: canvas
	widgets do: [ :w | 
		w renderOn: canvas.
		canvas pathTransform translateX: space Y: 0 ].
	canvas pathTransform translateX: (space * widgets size negated) Y: 0.
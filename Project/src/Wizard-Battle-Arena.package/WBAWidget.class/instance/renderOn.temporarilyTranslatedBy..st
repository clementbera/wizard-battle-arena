as yet unclassified
renderOn: canvas temporarilyTranslatedBy: aPoint 
	canvas pathTransform translateBy: aPoint.
	self renderOn: canvas.
	canvas pathTransform translateBy: aPoint negated.
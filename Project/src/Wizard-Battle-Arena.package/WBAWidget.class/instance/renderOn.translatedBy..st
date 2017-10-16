as yet unclassified
renderOn: canvas translatedBy: aPoint 
	canvas pathTransform translateBy: aPoint.
	self renderOn: canvas.
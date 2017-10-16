screen building
newSmallArrowSelectWidget: space
	^  self 
		newRowWidget: { self newLeftArrowColumSelectWidget . self newRightArrowColumSelectWidget }
		space: space
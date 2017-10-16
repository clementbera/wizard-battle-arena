screen building
newSeasonWidget: num
	^ self 
		newColumnWidget: (self seasonSubWidgets: num)
		space: 32
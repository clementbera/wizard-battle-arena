screen building
newNumPlayersWidget: num
	^ self newRowWidget: { (self textWidgetAt: num) . (self textWidgetAt: #players) } space: 40
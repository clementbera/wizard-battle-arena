initialization
initialize

	super initialize.

	gameTickActions := Dictionary new.
	process := self 
		newProcessAt: 35 
		do: [ gameTickActions keysAndValuesDo: [ :element :animation |
			animation animate ] ]
		every: self animationTick.
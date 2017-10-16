event handling
handleKeyDown: code
	code = self enterCode ifTrue: [ self nextScreen ].
	self hasPlayerSpecificHandling
		ifTrue: [ self handlePlayersKeyDown: code ]
		ifFalse: [ self handleGenericKeyDown: code ]
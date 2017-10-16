event handling
handlePlayersKeyDown: code	
	startingGame players withIndexDo: [ :player :playerIndex |
		| index |
		((index := player keyboardCodes indexOf: code) between: 1 and: 4)
			ifTrue: [ self handleKeyDownFor: playerIndex key: index ] ]
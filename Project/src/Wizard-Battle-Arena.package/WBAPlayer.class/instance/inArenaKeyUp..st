event
inArenaKeyUp: keyValue
	| index |
	index := keyboardCodes indexOf: keyValue.
	index = 0 ifTrue: [ ^ self ].
	movementKeyDown = index ifTrue: [ movementKeyDown := nil ].
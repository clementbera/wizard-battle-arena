event
inArenaKeyDown: keyValue
	| index |
	index := keyboardCodes indexOf: keyValue.
	index = 0 ifTrue: [ ^ self ].
	5 = index ifTrue: [ ^ character castSpell ].
	movementKeyDown := index.
	character maybeMove: index
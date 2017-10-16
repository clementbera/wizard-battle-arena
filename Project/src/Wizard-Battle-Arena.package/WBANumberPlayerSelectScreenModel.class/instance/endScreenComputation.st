actions
endScreenComputation
	| keyCodes |
	keyCodes := WBAPlayer defaultKeyboardCodes.
	startingGame players: ((1 to: currentChoice + 1) collect: [ :i | WBAPlayer new
			keyboardCodes: (keyCodes at: i);
			yourself ])
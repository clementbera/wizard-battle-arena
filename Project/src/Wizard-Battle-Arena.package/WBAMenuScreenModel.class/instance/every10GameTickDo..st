animation
every10GameTickDo: aBlock
	startingGame scheduler
		newGameTickAction: (WBAScreenAnimation new
			block: aBlock;
			yourself)
		for: self
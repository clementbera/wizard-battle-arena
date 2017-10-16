events
visitKeyDownEvent: anEvent
	players do: [ :each |
		each inArenaKeyDown: anEvent scanCode ]
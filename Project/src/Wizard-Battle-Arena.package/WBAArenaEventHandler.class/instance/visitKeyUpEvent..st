events
visitKeyUpEvent: anEvent
	players do: [ :each |
		each inArenaKeyUp: anEvent scanCode ]
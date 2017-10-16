bootstrap
eventHandler: screen
	^ WBAArenaEventHandler new
		players: startGame players;
		schedulers: { startGame scheduler . screen scheduler };
		yourself
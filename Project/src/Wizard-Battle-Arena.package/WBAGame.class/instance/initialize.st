initialization
initialize

	super initialize.

	gameDescriptor := WBAGameDescriptor new.
	textSprites := WBATextDescriptor new loadAllText.
	scheduler := WBAGameScheduler new.
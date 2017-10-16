event handling
eventHandler
	^ WBAKeyboardEventHandler new
		screenModel: self;
		yourself
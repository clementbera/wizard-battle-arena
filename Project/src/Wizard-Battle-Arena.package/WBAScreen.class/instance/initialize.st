initialization
initialize

	super initialize.

	self openWindow.
	scheduler := WBARenderingScheduler newFor: self.
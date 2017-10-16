initialization
openWindow
	window := (OSWindow createWithAttributes: (OSWindowAttributes new resizable: false; yourself)).
	window title: 'Wizard Battle Arena'.
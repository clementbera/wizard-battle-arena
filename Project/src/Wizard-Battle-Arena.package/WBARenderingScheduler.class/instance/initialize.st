initialization
initialize
	super initialize.
	process := self newProcessAt: 30 do: [ screen render ] every: self minTimeBetweenRendering.
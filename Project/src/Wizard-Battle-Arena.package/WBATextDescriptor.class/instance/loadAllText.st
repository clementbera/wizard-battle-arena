accessing
loadAllText
	| dict |
	dict := Dictionary new.
	self class availableText do: [ :key |
		fileName := key asString.
		dict at: key put: self loadImageFile ].
	^ dict
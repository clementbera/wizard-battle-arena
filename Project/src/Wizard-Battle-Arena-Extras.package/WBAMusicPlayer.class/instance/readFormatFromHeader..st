inner open al
readFormatFromHeader: header
	^ header channels = 1
		ifTrue: [ 
			header bitsPerSample = 8
				ifTrue: [ "AL_FORMAT_MONO8" 4352 ]
				ifFalse: [ "AL_FORMAT_MONO16" 4353 ] ]
		ifFalse: [ 
			header bitsPerSample = 8
				ifTrue: [ "AL_FORMAT_STEREO8" 4354 ]
				ifFalse: [ "AL_FORMAT_STEREO16" 4355 ] ]
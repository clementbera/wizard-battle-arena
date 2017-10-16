inner open al
readWAVFromStream: aReadStream
	"Create the context"
	| contextAttributes device context wav buffer source |
	
	(Smalltalk at: #OpenAL) isAvailable ifFalse: [ ^self ].
	
	wav := (Smalltalk at: #WAVParser) wavFromStream: aReadStream.
	
	contextAttributes := ALContextAttributes new.
	device := (Smalltalk at: #OpenALC) openDefaultDevice.
	context := device createContext: contextAttributes asList.
	context process.
	
	context currentDuring: [
		
		"Create the buffer"
		buffer := self makeBufferFromHeader: wav header data: wav data asByteArray.
		
		"Create the source"
		source := (Smalltalk at: #OpenAL) genSource.
		(Smalltalk at: #OpenAL) sourcei: source param: 4105 "AL_BUFFER" value: buffer.
		
		"Play the source"
		(Smalltalk at: #OpenAL) sourcePlay: source.
		
		"Play for sometime "
		(Delay forSeconds: wav header soundDuration) wait.
		
		"Delete the source and the buffer"
		(Smalltalk at: #OpenAL) deleteSource: source;
			deleteBuffer: buffer
	].

	(Smalltalk at: #OpenALC) nullCurrentContext.
	context destroy.
	device close.

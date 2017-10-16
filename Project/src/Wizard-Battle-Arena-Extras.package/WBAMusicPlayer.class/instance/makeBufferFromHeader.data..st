inner open al
makeBufferFromHeader: header data: data
	| buffer |
	buffer := (Smalltalk at: #OpenAL) genBuffer.
	(Smalltalk at: #OpenAL) bufferData: buffer format: (self readFormatFromHeader: header) data: data size: data size freq: header sampleRate.
	^ buffer
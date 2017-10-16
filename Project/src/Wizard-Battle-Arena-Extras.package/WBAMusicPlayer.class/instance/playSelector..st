playing
playSelector: sel
	processes
		at: sel 
		put: ([ self readWAVFromStream: (WBAMusicData getMusicStreamForSelector: sel) ] forkAt: 25)
storing
storeMusicForSelector: selector
	| fileName |
	fileName := 'resources/music/' , selector , '.wav'.
	musics at: selector put: fileName asFileReference readStream binary
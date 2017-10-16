storing
storeAllMusic
	"
	self storeAllMusic
	"
	musics := Dictionary new.
	self allMusicSelectors do: [ :sel |
		self storeMusicForSelector: sel ]
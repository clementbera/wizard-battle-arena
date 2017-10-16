bootstrap
basicLoadImageFile
	^ PNGReadWriter formFromFileNamed: self resourceFolder , self classFolder,  fileName , '.png'
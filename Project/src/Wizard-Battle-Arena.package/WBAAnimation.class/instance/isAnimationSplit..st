constants
isAnimationSplit: x 
	"if x is 8, answers true every 8th of operation"
	^ step \\ (self numberOfAnimationFrame // x) = 0
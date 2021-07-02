as yet unclassified
testColor
	"tests if the color is green"
	
	self assert: resultsWindow history first hasColorAttribute equals: true.
	self assert: (resultsWindow history first colorAt: 1 ) equals: (Color r: 0.651 g: 0.887 b: 0.181)
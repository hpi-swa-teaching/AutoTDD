tests
testColor
	"tests if the color is green"
	
	self assert: resultsWindow history first hasColorAttribute equals: true.
	self assert: (resultsWindow history first colorAt: 1 ) equals: (resultsWindow colorForStatus: #successful)
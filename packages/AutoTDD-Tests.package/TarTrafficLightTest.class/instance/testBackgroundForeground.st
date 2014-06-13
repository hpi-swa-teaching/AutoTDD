tests
testBackgroundForeground
	
	self deny: sut inForeground.
	self deny: sut wantsToBeTopmost.
	sut foregroundButtonClicked.
	self assert: sut inForeground.
	self assert: sut wantsToBeTopmost.
	sut foregroundButtonClicked.
	self deny: sut inForeground.
	self deny: sut wantsToBeTopmost.
	"self assert: sut owner firstSubmorph = sut."
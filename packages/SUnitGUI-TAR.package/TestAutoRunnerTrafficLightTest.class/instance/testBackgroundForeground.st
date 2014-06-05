tests
testBackgroundForeground
	| method |
	[ method := (self class >> #fooMethod) copy.
	method methodClass: ClassGettingTested.
	ClassGettingTested addSelector: #fooMethod withMethod: method.
	sut testRunningSemaphore wait.
	sut foregroundButtonClicked.
	self assert: sut inForeground.
	self assert: sut wantsToBeTopmost.
	self assert: sut owner firstSubmorph = sut.
	ClassGettingTested addSelector: #fooMethod withMethod: method.
	sut testRunningSemaphore wait. ]
		ensure: [ ClassGettingTested removeSelector: #fooMethod ]
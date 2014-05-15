tests
testBackgroundForeground
	| method |
	[ method := (self class >> #fooMethod) copy.
	method methodClass: ClassGettingTested.
	ClassGettingTested addSelector: #fooMethod withMethod: method.
	sut testRunningSemaphore wait.
	sut backgroundButtonClicked.
	self deny: sut backgroundButton enabled.
	self assert: sut foregroundButton enabled.
	self deny: sut wantsToBeTopmost.
	self assert: sut owner lastSubmorph = sut.
	ClassGettingTested addSelector: #fooMethod withMethod: method.
	sut foregroundButtonClicked.
	self assert: sut backgroundButton enabled.
	self deny: sut foregroundButton enabled.
	self assert: sut wantsToBeTopmost.
	self assert: sut submorphBefore = sut owner firstSubmorph.
	ClassGettingTested addSelector: #fooMethod withMethod: method.
	sut testRunningSemaphore wait. ]
		ensure: [ ClassGettingTested removeSelector: #fooMethod ]
tests
testBackgroundForeground
	| method |
	[ method := (self class >> #fooMethod) copy.
	method methodClass: ClassGettingTested.
	ClassGettingTested addSelector: #fooMethod withMethod: method.
	sut testRunningSemaphore wait.
	"self assert: sut trafficLightResults size = 1."
	sut backgroundButtonClicked.
	self deny: sut backgroundButton enabled.
	self assert: sut foregroundButton enabled.
	self assert: sut owner lastSubmorph = sut.
	ClassGettingTested addSelector: #fooMethod withMethod: method.
	"self assert: sut trafficLightResults size = 1."
	sut foregroundButtonClicked.
	self assert: sut backgroundButton enabled.
	self deny: sut foregroundButton enabled.
	self assert: sut owner firstSubmorph = sut.
	ClassGettingTested addSelector: #fooMethod withMethod: method.
	sut testRunningSemaphore wait.
	self assert: sut trafficLightResults size = 2 ]
		ensure: [ ClassGettingTested removeSelector: #fooMethod ]
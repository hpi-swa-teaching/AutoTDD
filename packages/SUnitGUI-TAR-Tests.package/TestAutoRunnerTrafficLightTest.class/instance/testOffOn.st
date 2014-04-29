tests
testOffOn
	| method |
	[ method := (self class >> #fooMethod) copy.
	method methodClass: ClassGettingTested.
	ClassGettingTested addSelector: #fooMethod withMethod: method.
	sut testRunningSemaphore wait.
	self assert: sut trafficLightResults size = 1.
	sut offButtonClicked.
	self deny: sut offButton enabled.
	self assert: sut onButton enabled.
	ClassGettingTested addSelector: #fooMethod withMethod: method.
	self assert: sut trafficLightResults size = 1.
	sut onButtonClicked.
	self assert: sut offButton enabled.
	self deny: sut onButton enabled.
	ClassGettingTested addSelector: #fooMethod withMethod: method.
	sut testRunningSemaphore wait.
	self assert: sut trafficLightResults size = 2 ]
		ensure: [ ClassGettingTested removeSelector: #fooMethod ]
tests
testOffOn
	| method |
	[ method := (self class >> #fooMethod) copy.
	method methodClass: ClassGettingTested.
	ClassGettingTested addSelector: #fooMethod withMethod: method.
	sut testRunningSemaphore wait.
	self assert: sut trafficLightResults size = 1.
	sut settingsButtonClicked.
	sut localOnOffButtonClicked.
	self assert: sut onOffButton isOn not.
	self deny: sut onOffButton isOn.
	ClassGettingTested addSelector: #fooMethod withMethod: method.
	self assert: sut trafficLightResults size = 1.
	sut localOnOffButtonClicked.
	self deny: sut onOffButton isOn not.
	self assert: sut onOffButton isOn.
	ClassGettingTested addSelector: #fooMethod withMethod: method.
	sut testRunningSemaphore wait.
	self assert: sut trafficLightResults size = 2 ]
		ensure: [ ClassGettingTested removeSelector: #fooMethod ]
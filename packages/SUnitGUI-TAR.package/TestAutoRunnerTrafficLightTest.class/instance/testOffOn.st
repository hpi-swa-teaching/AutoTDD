tests
testOffOn
	| method |
	[ method := (self class >> #fooMethod) copy.
	method methodClass: ClassGettingTested.
	ClassGettingTested addSelector: #fooMethod withMethod: method.
	sut localData testRunningSemaphore wait.
	self assert: sut localData results size = 1.
	sut settingsButtonClicked.
	sut localOnOffButtonClicked.
	self assert: sut onOffButton isOn not.
	self deny: sut onOffButton isOn.
	ClassGettingTested addSelector: #fooMethod withMethod: method.
	self assert: sut localData isNil.
	sut localOnOffButtonClicked.
	self deny: sut onOffButton isOn not.
	self assert: sut onOffButton isOn.
	ClassGettingTested addSelector: #fooMethod withMethod: method.
	sut localData testRunningSemaphore wait.
	self assert: sut localData results size = 1 ]
		ensure: [ ClassGettingTested removeSelector: #fooMethod ]
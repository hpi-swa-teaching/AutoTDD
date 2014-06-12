tests
testLocalOnOff
	
	| method |
	[ method := (self class >> #fooMethod) copy.
	method methodClass: ClassGettingTested.
	ClassGettingTested addSelector: #fooMethod withMethod: method.
	sut localData testRunningSemaphore wait.
	self assert: sut localData results size equals: 1.
	sut settingsButtonClicked.
	self assert: sut localOnOffButton isOn.
	sut localOnOffButtonClicked.
	self deny: sut localOnOffButton isOn.
	ClassGettingTested addSelector: #fooMethod withMethod: method.
	self assert: sut localData isNil.
	sut localOnOffButtonClicked.
	self assert: sut localOnOffButton isOn.
	ClassGettingTested addSelector: #fooMethod withMethod: method.
	sut localData testRunningSemaphore wait.
	self assert: sut localData results size equals: 1 ]
		ensure: [ ClassGettingTested removeSelector: #fooMethod ]
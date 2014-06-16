tests
testLocalOnOff
	
	| method |
	[ method := (self class >> #fooMethod) copy.
	method methodClass: ClassGettingTested.
	ClassGettingTested addSelector: #fooMethod withMethod: method.
	sut local data testRunningSemaphore wait.
	self assert: sut local data results size equals: 1.
	sut settingsButtonClicked.
	self assert: sut local onOffButton isOn.
	sut local onOffButtonClicked.
	self deny: sut local onOffButton isOn.
	ClassGettingTested addSelector: #fooMethod withMethod: method.
	self assert: sut local data isNil.
	sut local onOffButtonClicked.
	self assert: sut local onOffButton isOn.
	ClassGettingTested addSelector: #fooMethod withMethod: method.
	sut local data testRunningSemaphore wait.
	self assert: sut local data results size equals: 1 ]
		ensure: [ ClassGettingTested removeSelector: #fooMethod ]
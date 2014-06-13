tests
testTravisOnOff
	
	sut settingsButtonClicked.
	self deny: sut travisOnOffButton isOn.
	self assert: sut travisData isNil.
	"sut travisOnOffButtonClicked.
	self assert: sut travisOnOffButton isOn.
	self deny: sut travisData isNil.
	sut travisOnOffButtonClicked.
	self deny: sut travisOnOffButton isOn.
	self assert: sut travisData isNil"
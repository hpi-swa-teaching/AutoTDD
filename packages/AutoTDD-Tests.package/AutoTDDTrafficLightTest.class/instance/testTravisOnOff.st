tests
testTravisOnOff
	
	sut settingsButtonClicked.
	self deny: sut travis onOffButton isOn.
	self assert: sut travis data isNullObject.
	"sut travisOnOffButtonClicked.
	self assert: sut travisOnOffButton isOn.
	self deny: sut travisData isNil.
	sut travisOnOffButtonClicked.
	self deny: sut travisOnOffButton isOn.
	self assert: sut travisData isNil"
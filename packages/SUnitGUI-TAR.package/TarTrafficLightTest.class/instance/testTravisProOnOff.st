tests
testTravisProOnOff
	
	sut settingsButtonClicked.
	self deny: sut travisProOnOffButton isOn.
	self deny: sut useTravisPro.
	sut travisProOnOffButtonClicked.
	self assert: sut travisProOnOffButton isOn.
	self assert: sut useTravisPro.
	sut travisProOnOffButtonClicked.
	self deny: sut travisProOnOffButton isOn.
	self deny: sut useTravisPro
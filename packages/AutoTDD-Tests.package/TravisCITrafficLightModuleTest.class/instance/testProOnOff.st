as yet unclassified
testProOnOff
	
	sut settingsButtonClicked.
	self deny: sut travis proOnOffButton isOn.
	self deny: sut travis usePro.
	"sut travisProOnOffButtonClicked.
	self assert: sut travisProOnOffButton isOn.
	self assert: sut useTravisPro.
	sut travisProOnOffButtonClicked.
	self deny: sut travisProOnOffButton isOn.
	self deny: sut useTravisPro"
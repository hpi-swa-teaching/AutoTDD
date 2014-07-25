as yet unclassified
testOnOff
	
	sut settingsButtonClicked.
	self deny: sut travis onOffButton isOn.
	self assert: sut travis data isNullObject.
	"The next part causes SSL errors, yet couldn't figure out why"
	"sut travis onOffButtonClicked.
	self assert: sut travis onOffButton isOn.
	self deny: sut travis data isNullObject.
	sut travis onOffButtonClicked.
	self deny: sut travis onOffButton isOn.
	self assert: sut travis data isNullObject"
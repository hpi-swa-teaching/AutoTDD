tests
testMute
	
	self assert: sut soundPlayer isMuted.
	sut muteButtonClicked.
	self deny: sut soundPlayer isMuted.
	sut muteButtonClicked.
	self assert: sut soundPlayer isMuted
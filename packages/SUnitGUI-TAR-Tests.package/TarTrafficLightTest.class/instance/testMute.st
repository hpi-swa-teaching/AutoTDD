tests
testMute
	
	self assert: sut isMuted.
	sut muteButtonClicked.
	self deny: sut isMuted.
	sut muteButtonClicked.
	self assert: sut isMuted
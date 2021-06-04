tests
testMuting
	
	ATDDSoundPlayer instance lastPlayedSound: #unset.
	ATDDSoundPlayer instance isMuted: true.
	ATDDSoundPlayer instance playSoundForStatus: #successful.
	self assert: ATDDSoundPlayer instance lastPlayedSound = #unset.
	ATDDSoundPlayer instance isMuted: false.
	ATDDSoundPlayer instance playSoundForStatus: #successful.
	self assert: ATDDSoundPlayer instance lastPlayedSound ~= #unset
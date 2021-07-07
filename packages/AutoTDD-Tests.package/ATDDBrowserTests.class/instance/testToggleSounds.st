tests
testToggleSounds

	| oldValue |
	
	oldValue := ATDDSoundPlayer instance isMuted.
	browser toggleSounds.
	self assert: ATDDSoundPlayer instance isMuted = (oldValue not).
	"reverting to old settings"
	browser toggleSounds
action
toggleSounds
	ATDDSoundPlayer instance isMuted: ATDDSoundPlayer instance isMuted not.
	self changed: #soundsButtonLabel
action
toggleSounds
	ATDDSoundPlayer instance isMuted: ATDDSoundPlayer instance isMuted not.
	self class
		changed: #soundsButtonState;
		changed: #soundsButtonLabel
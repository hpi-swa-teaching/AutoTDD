building
buildGlobalSoundsButtonWith: aBuilder
	^ aBuilder pluggableButtonSpec new
		model: self;
		label: #soundsButtonLabel;
		action: #toggleSounds;
		state: #soundsButtonState;
		yourself
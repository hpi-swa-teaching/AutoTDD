constants
imageDictionary

	^ IdentityDictionary newFrom: {
		#apply 			-> [ 'ApplyButton.png' ].
		#collapse		-> [ 'CollapseButton.png' ].
		#errored		-> [ 'RedBulb.png' ].
		#expand		-> [ 'ExpandButton.png' ].
		#failed			-> [ 'YellowBulb.png' ].
		#gear			-> [ 'SettingsGear.png' ].
		#mute 			-> [ 'muteButton.png' ].
		#unmute		-> [ 'unmuteButton.png' ].
		#off 			-> [ 'OffButton.png' ].
		#on			-> [ 'OnButton.png' ].
		#passed		-> [ 'GreenBulb.png' ].
		#pin			-> [ 'Pin.png' ].
		#pinSticked	-> [ 'PinActive.png' ].
		#reload		-> [ 'Reload.png' ].
		#unknown		-> [ 'GreyBulb.png' ]. }
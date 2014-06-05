accessing
settingsVisible
	settingsVisible notNil ifTrue: [^settingsVisible].
	self settingsVisible: false.
	^settingsVisible.
accessing
applyDefaultConfiguration
	self paused: true.
	self repository: TCINullRepository new.
	self name: 'New Travis Status'
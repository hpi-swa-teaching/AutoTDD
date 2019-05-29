accessing
localStatus
	self flag: #todo. "hard coded"
	(localStatus = 'executing') ifTrue: [^ self localProgress].
	^localStatus ifNil: [localStatus := '']
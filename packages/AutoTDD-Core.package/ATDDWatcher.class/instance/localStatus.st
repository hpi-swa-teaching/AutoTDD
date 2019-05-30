accessing
localStatus
	localStatus ifNil: [localStatus := [self class notExecutedText]].
	^localStatus value
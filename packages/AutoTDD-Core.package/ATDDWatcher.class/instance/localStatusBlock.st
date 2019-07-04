accessing
localStatusBlock
	localStatusBlock ifNil: [localStatusBlock := [self class notExecutedText]].
	^localStatusBlock value
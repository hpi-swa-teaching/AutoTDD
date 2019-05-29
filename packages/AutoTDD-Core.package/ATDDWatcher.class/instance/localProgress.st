accessing
localProgress
	^ localProgress
		ifNotNil: [(localProgress contents * 100) asInteger asString, '%']
		ifNil: ['0%']
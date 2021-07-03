initialization
new

	instance
		ifNil: [ ^ super new ]
		ifNotNil: [ ^ self error: 'Do not use new, use instance instead' ]
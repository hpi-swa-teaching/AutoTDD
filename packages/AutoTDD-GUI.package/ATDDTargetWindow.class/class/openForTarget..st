initialization
openForTarget: anObject
	
	| model |
	
	self isAbstract ifTrue: [ ^ self error: 'Abstract class. Please do not initialize' ].
	model := self basicNew
		target: anObject;
		initialize;
		yourself.
	ToolBuilder open: model.
	
	^ model
instance creation
openForTarget: anObject
	| model |
	self superclass = Model ifTrue: [^ self error: 'Abstract class. Please do not initialize'].
	model := self basicNew
		target: anObject;
		initialize;
		yourself.
	ToolBuilder open: model.
	^ model
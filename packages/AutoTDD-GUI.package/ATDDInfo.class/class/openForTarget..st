instance creation
openForTarget: aTarget
	| model |
	self superclass = Model ifTrue: [^ self error: 'Abstract class. Please do not initialize'].
	model := self basicNew
				target: aTarget;
				initialize;
				yourself.
	ToolBuilder open: model.
	^ model
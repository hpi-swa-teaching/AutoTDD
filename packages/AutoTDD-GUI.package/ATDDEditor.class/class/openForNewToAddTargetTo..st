constants
openForNewToAddTargetTo: aCollection

	| model |
	
	self isAbstract ifTrue: [ ^ self error: 'Abstract class. Please do not initialize' ].
	model := self basicNew
		target: self emptyTarget;
		outClosure: [ :target | aCollection addLast: target. ATDDBrowser update ];
		initialize;
		yourself.
	ToolBuilder open: model.
	
	^ model
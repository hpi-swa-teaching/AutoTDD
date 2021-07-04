initialization
open
	
	| model |
	
	model := self basicNew
		initialize;
		yourself.
	ToolBuilder open: model.
	
	^ model
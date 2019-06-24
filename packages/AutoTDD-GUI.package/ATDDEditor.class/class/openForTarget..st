instance creation
openForTarget: anObject
	| model |
	self flag:#todo "Is there a way of allowing calling this method in subclasses only?".
	model := self basicNew
				target: anObject;
				initialize;
				yourself.
				
	ToolBuilder open: model.
	
	^ model
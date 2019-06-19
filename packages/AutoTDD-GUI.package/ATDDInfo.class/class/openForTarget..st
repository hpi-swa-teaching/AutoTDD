as yet unclassified
openForTarget: aTarget
	| model |
		self flag:#todo "Is there a way of allowing calling this method in subclasses only?".
	model := self basicNew
				target: aTarget;
				initialize;
				yourself.
	ToolBuilder open: model.
	^ model
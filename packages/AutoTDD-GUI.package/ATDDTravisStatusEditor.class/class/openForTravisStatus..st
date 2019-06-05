as yet unclassified
openForTravisStatus: aTravisStatus
	| model |
	model := self basicNew
				travisStatus: aTravisStatus;
				initialize;
				yourself.
				
	ToolBuilder open: model.
	
	^ model
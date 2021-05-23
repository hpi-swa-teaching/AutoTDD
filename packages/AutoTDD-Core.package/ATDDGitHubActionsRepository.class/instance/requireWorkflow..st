initialize-release
requireWorkflow: aNumber
	
	^ aNumber negative ifTrue: [ JsonObject new ] ifFalse: [ self client getJsonForWorkflow: aNumber ]
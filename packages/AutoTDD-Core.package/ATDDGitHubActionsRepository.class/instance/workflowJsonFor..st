initialize-release
workflowJsonFor: aNumber
	
	^ self workflowsDictionary at: aNumber ifAbsentPut: [ self requireWorkflow: aNumber ]
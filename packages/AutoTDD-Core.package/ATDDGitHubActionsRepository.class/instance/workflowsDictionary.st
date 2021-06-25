initialization
workflowsDictionary
	
	^ self cache at: #workflows ifAbsentPut: [ IdentityDictionary new ]
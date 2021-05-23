initialize-release
workflowsDictionary
	
	^ self cache at: #workflows ifAbsentPut: [ IdentityDictionary new ]
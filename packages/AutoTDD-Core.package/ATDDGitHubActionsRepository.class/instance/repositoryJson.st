initialize-release
repositoryJson
	
	^ self cache at: #repository ifAbsentPut: [ self requireRepository ]
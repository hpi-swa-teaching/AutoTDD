accessing
repositoryJson

	^ self cache at: #repository
		ifAbsentPut: [ self requireRepository ]
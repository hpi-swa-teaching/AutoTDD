as yet unclassified
repositoryJson

	^ self cache at: #repository
		ifAbsentPut: [ self requireRepository ]
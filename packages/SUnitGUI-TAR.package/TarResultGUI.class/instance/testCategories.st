as yet unclassified
testCategories

	^ self data 
		ifNil: [ String empty ]
		ifNotNil: [ self data testCategories ]
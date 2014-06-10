as yet unclassified
testCategory

	^ self data 
		ifNil: [ String empty ]
		ifNotNil: [ self data testCategory ]
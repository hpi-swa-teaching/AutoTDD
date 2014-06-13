as yet unclassified
categories

	^ self data 
		ifNil: [ String empty ]
		ifNotNil: [ self data categories ]
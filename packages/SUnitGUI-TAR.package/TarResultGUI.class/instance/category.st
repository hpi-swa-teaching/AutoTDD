as yet unclassified
category

	^ self data 
		ifNil: [ String empty ]
		ifNotNil: [ self data category ]
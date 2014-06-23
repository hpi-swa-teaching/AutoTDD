accessing
nameExpanded
	
	^ self nameMorph
		ifNil: [ false ]
		ifNotNil: [ true ]
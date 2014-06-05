coloring
determineTextForErrors
	| newErrorCount |
	newErrorCount := 0.
	self testResultErrors valuesDo: [ :isNew | isNew ifTrue: [ newErrorCount := newErrorCount + 1 ] ].			
	newErrorCount = 0
		ifTrue: [	self timeStampMorph contents: ('E(',((self predecessor testResultErrors size)-( self testResultErrors size)),') ',(self timeStampMorph contents)) ]
		ifFalse: [ self timeStampMorph contents: ('E(+',newErrorCount,') ',(self timeStampMorph contents)) ]
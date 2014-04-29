coloring
determineTextForFailures
	| newFailureCount |
	newFailureCount := 0.
	self testResultFailures valuesDo: [ :isNew |
		isNew ifTrue: [ newFailureCount := newFailureCount + 1 ]
	].
	newFailureCount = 0
		ifTrue: [	self timeStampMorph contents: ('F(',((self testResultFailures size)-(self predecessor testResultFailures size)),') ',(self timeStampMorph contents)) ]
		ifFalse: [ self timeStampMorph contents: ('F(+',newFailureCount,') ',(self timeStampMorph contents)) ]
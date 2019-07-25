calculation
messageFor: aSet withStatus: aString
	
	| message |
	
	message := aString , ' ' , (aSet asOrderedCollection first) name.
	aSet size > 1 ifTrue: [ message := message , ' and '
		, (aSet size - 1) asString , ' more' ].
	
	^ message
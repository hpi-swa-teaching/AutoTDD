accessing
requestOn: aString
	"Intended to test the default answer functionality"
	
	^ aString isEmpty
		ifTrue: [ self defaultAnswer ]
		ifFalse: [ self ]
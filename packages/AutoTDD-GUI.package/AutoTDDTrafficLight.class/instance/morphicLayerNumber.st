as yet unclassified
morphicLayerNumber
	
	"morph can be behind menus and balloons, but in front of most other stuff or 
	behaves like any other morph"
	^ self inForeground
		ifTrue: [ 3 ]
		ifFalse: [ 100 ]
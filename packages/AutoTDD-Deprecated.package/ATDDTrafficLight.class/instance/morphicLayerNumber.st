accessing
morphicLayerNumber
	
	^ self inForeground ifTrue: 
	"morph can be behind menus and balloons, but in front of most other stuff or 
	behaves like any other morph"
	[ 3 ] ifFalse: [ 100 ]
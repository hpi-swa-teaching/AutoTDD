as yet unclassified
morphicLayerNumber
	"morph can be behind menus and balloons, but in front of most other stuff or 
	behaves like any other morph"
	|layer|
	self inForeground
		ifTrue: [ layer := 3]
		ifFalse: [ layer := 100].
	^ layer
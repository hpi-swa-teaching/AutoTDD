as yet unclassified
morphicLayerNumber
	"morph is behind menus and balloons, but in front of most other stuff"
	|layer|
	"self halt."
	self backgroundButton enabled 
		ifTrue: [ layer := 12.]
		ifFalse: [ layer := self valueOfProperty: #morphicLayerNumber ifAbsent: [100].].
		
	^ 12
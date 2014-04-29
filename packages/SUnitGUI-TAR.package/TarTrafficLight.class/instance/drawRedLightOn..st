drawing
drawRedLightOn: aCanvas 
	| redLightColor |
	redLightColor := self testStatus = #red
				ifTrue: [ Color red ]
				ifFalse: [ Color red * 0.3 ].
	aCanvas
		fillOval: (self position extent: 40 @ 40)
		color: redLightColor
		borderWidth: 3
		borderColor: Color black
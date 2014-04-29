drawing
drawYellowLightOn: aCanvas 
	| yellowLightColor |
	yellowLightColor := self testStatus = #yellow
				ifTrue: [ Color yellow ]
				ifFalse: [ Color yellow * 0.3 ].
	aCanvas
		fillOval: (self position + (40 @ 0) extent: 40 @ 40)
		color: yellowLightColor
		borderWidth: 3
		borderColor: Color black
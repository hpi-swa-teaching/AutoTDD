drawing
drawGreenLightOn: aCanvas 
	| greenLightColor |
	greenLightColor := self testStatus = #green
				ifTrue: [ Color green ]
				ifFalse: [ Color green * 0.3 ].
	aCanvas
		fillOval: (self position + (80 @ 0) extent: 40 @ 40)
		color: greenLightColor
		borderWidth: 3
		borderColor: Color black
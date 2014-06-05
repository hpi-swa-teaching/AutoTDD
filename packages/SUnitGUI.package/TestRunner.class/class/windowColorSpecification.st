window color
windowColorSpecification

	^ WindowColorSpec 
		classSymbol: self name 
		wording: 'Test Runner' 
		brightColor:  Color orange
		pastelColor: (Color r: 0.65 g: 0.753 b: 0.976)
		helpMessage: 'The Camp Smalltalk TestRunner tool for SUnit'
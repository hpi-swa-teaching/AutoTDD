gui
fitSubmorphs
	| offset |
	self settingsVisible 
		ifFalse: [offset := 80.]
		ifTrue: [offset := -80].
	self submorphsDo: [:each | each position > (self position + (-1 @ 20)) 
								ifTrue: [each position: each position + (0 @ offset).].
		]
	

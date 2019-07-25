accessing
watcherAt: anInteger put: aBoolean
	
	self
		selectedWatchers: (self selectedWatchers
			perform: (aBoolean
				ifTrue: [ #copyWith: ]
				ifFalse: [ #copyWithout: ])
			with: (self watchers at: anInteger ifAbsent: [ ^ self ])).
	self changed: #selectedWatchers
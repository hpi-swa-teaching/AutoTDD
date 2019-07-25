accessing
travisStatusAt: anInteger put: aBoolean
	
	self
		selectedTravisStatuses: (self selectedTravisStatuses
			perform: (aBoolean ifTrue: [ #copyWith: ] ifFalse: [ #copyWithout: ])
			with: (self travisStatuses at: anInteger ifAbsent: [ ^ self ])).
	self changed: #selectedTravisStatuses
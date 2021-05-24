accessing
gitHubActionAt: anInteger put: aBoolean
	
	self
		selectedGitHubActions: (self selectedGitHubActions
			perform: (aBoolean ifTrue: [ #copyWith: ] ifFalse: [ #copyWithout: ])
			with: (self gitHubActions at: anInteger ifAbsent: [ ^ self ])).
	self changed: #selectedGitHubActions
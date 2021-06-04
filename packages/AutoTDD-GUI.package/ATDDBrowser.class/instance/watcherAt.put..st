accessing
watcherAt: anIndex put: aBoolean
	self
		selectedWatchers: (self selectedWatchers
				perform: (aBoolean
						ifTrue: [#copyWith:]
						ifFalse: [#copyWithout:])
				with: (self watchers
						at: anIndex
						ifAbsent: [^ self])).
	self changed: #selectedWatchers.
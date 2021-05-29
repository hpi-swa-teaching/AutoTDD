accessing
watcherAt: t1 put: t2 
	self
		selectedWatchers: (self selectedWatchers
				perform: (t2
						ifTrue: [#copyWith:]
						ifFalse: [#copyWithout:])
				with: (self watchers
						at: t1
						ifAbsent: [^ self])).
	self changed: #selectedWatchers.
running
tearDown
	super tearDown.
	browser watchers removeAll.
	browser watchers addAll: preTestWatchers.
	browser changed: #close.
	self newMorphs
		do: [:each | each delete]
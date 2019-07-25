action
addWatcher: aWatcher
	
	self watchers add: aWatcher.
	self class changed: #watchers.
	
	^ aWatcher
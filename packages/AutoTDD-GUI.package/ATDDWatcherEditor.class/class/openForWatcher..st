instance creation
openForWatcher: aWatcher
	| packageSelector |
	self flag: #todo.
	packageSelector := self basicNew.
	packageSelector
		watcher: aWatcher;
		initialize.
	^ packageSelector window: (ToolBuilder open: packageSelector)
	
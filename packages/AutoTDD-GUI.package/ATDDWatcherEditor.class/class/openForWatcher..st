instance creation
openForWatcher: aWatcher
	| watcherEditor |
	self flag: #todo.
	watcherEditor := self basicNew.
	watcherEditor
		watcher: aWatcher;
		initialize.
	^ watcherEditor window: (ToolBuilder open: watcherEditor)
	
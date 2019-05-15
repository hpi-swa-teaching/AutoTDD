instance creation
openForWatcher: aWatcher
	| packageSelector |
	packageSelector := self new.
	packageSelector watcher: aWatcher.
	^ ToolBuilder open: packageSelector
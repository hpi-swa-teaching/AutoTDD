instance creation
openForWatcher: aWatcher
	| model |
	model := self basicNew
				watcher: aWatcher;
				initialize;
				yourself.
				
	ToolBuilder open: model.
	
	^ model
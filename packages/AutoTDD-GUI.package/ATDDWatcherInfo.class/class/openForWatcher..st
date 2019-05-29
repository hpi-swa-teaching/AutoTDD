as yet unclassified
openForWatcher: aWatcher
	^ ToolBuilder open:
			(self basicNew
				watcher: aWatcher;
				initialize;
				yourself)
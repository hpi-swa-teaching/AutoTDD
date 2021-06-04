instance creation
openForWatchers: aWatcherCollection forStatuses: aStatusCollection forActions: anActionCollection

	| model |
	
	^ aWatcherCollection size + aStatusCollection size + anActionCollection size > 0
		ifTrue: [
			model := self basicNew
				watchers: aWatcherCollection;
				travisStatuses: aStatusCollection;
				gitHubActions: anActionCollection;
				initialize;
				update;
				yourself.
			ToolBuilder open: model.
			model ]
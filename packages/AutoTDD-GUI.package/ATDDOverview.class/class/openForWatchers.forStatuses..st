instance creation
openForWatchers: aWatcherCollection forStatuses: aStatusCollection 
	| model |
	^ aWatcherCollection size + aStatusCollection size > 0
		ifTrue: 
			[model := self basicNew watchers: aWatcherCollection;
				 travisStatuses: aStatusCollection;
				 initialize;
				 yourself.
			ToolBuilder open: model.
			model]
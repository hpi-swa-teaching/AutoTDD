updating
changed: aSymbol
	
	super changed: aSymbol.
	aSymbol = #watchers ifTrue: [ self changedTestingEntityOfType: #watcher ].
	aSymbol = #travisStatuses ifTrue: [ self changedTestingEntityOfType: #travisStatus ].
	aSymbol = #gitHubActions ifTrue: [ self changedTestingEntityOfType: #gitHubAction ]
	
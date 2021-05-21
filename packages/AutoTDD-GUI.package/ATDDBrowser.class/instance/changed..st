updating
changed: aSymbol
	
	super changed: aSymbol.
	aSymbol = #watchers ifTrue: [ self updateSelectedWatchers ].
	aSymbol = #travisStatuses ifTrue: [ self updateSelectedTravisStatuses ].
	aSymbol = #gitHubActions ifTrue: [ self updateSelectedGitHubActions ]
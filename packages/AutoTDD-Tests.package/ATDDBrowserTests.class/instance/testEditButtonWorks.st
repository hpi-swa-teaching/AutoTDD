tests
testEditButtonWorks
	| watcherWindow watcher selection |
	watcherWindow := browser addWatcher.
	watcherWindow targetName: 'IBM'.
	watcher := watcherWindow save.
	self assert: (self fetchCopyOfWatchers size = 1).
	
	selection := OrderedCollection new.
	selection add: watcher.
	browser selectedWatchers: selection.
	
	self assert: (browser selectedWatchers allSatisfy: [:each | each name = 'IBM']).
	
	watcherWindow := browser editWatcher first.
	
	watcherWindow targetName: 'MBI'.
	watcherWindow save.
	
	self assert: (browser selectedWatchers allSatisfy: [:each | each name = 'MBI']).
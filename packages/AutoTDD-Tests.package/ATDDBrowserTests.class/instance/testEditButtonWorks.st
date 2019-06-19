tests
testEditButtonWorks
	| watcherWindow watcher selection |
	watcherWindow := browser addWatcher.
	watcherWindow watcherName: 'IBM'.
	watcher := watcherWindow saveWatcher.
	self assert: (self fetchCopyOfWatchers size = 1).
	
	selection := OrderedCollection new.
	selection add: watcher.
	browser selectedWatchers: selection.
	
	self assert: (browser selectedWatchers allSatisfy: [:each | each name = 'IBM']).
	
	watcherWindow := browser editWatcher first.
	
	watcherWindow watcherName: 'MBI'.
	watcherWindow saveWatcher.
	
	self assert: (browser selectedWatchers allSatisfy: [:each | each name = 'MBI']).
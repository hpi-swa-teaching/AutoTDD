tests
testEditButtonWorks
	
	| watcherWindow watcher selection |
	
	watcherWindow := browser createWatcher.
	watcherWindow targetName: 'IBM'.
	watcherWindow save.
	watcher := watcherWindow watcher.
	self assert: self fetchCopyOfWatchers size = 1.
	selection := OrderedCollection new.
	selection add: watcher.
	browser selectedWatchers: selection.
	self assert: (browser selectedWatchers allSatisfy: [ :each | each name = 'IBM' ]).
	watcherWindow := browser editWatchers first.
	watcherWindow targetName: 'MBI'.
	watcherWindow save.
	self assert: (browser selectedWatchers allSatisfy: [ :each | each name = 'MBI' ])
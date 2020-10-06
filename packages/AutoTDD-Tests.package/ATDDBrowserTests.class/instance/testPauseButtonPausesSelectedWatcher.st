tests
testPauseButtonPausesSelectedWatcher
	
	| watcherWindow watcher1 watcher2 selection |
	
	watcherWindow := browser addWatcher.
	watcher1 := watcherWindow save.
	watcherWindow := browser addWatcher.
	watcher2 := watcherWindow save.
	browser selectedWatchers: browser watchers.
	self assert: (browser selectedWatchers allSatisfy: [ :each | each paused not ]).
	selection := OrderedCollection new.
	selection add: watcher1.
	browser selectedWatchers: selection.
	browser pauseSelectedWatchers.
	self assert: watcher1 paused.
	self assert: watcher2 paused not
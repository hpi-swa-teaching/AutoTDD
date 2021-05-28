tests
testPauseButtonPausesSelectedWatcher
	
	| watcherWindow watcher1 watcher2 selection |
	
	watcherWindow := browser addWatcher.
	watcherWindow save.
	watcher1 := watcherWindow watcher.
	watcherWindow := browser addWatcher.
	watcherWindow save.
	watcher2 := watcherWindow watcher.
	browser selectedWatchers: browser watchers.
	self assert: (browser selectedWatchers allSatisfy: [ :each | each paused not ]).
	selection := OrderedCollection new.
	selection add: watcher1.
	browser selectedWatchers: selection.
	browser pauseSelectedWatchers.
	self assert: watcher1 paused.
	self assert: watcher2 paused not
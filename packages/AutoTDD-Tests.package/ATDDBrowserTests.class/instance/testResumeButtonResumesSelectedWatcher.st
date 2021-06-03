tests
testResumeButtonResumesSelectedWatcher
	
	| watcherWindow watcher1 watcher2 selection |
	
	watcherWindow := browser createWatcher.
	watcherWindow save.
	watcher1 := watcherWindow watcher.
	watcherWindow := browser createWatcher.
	watcherWindow save.
	watcher2 := watcherWindow watcher.
	browser pauseAll.
	self assert: (browser watchers allSatisfy: [ :each | each paused ]).
	selection := OrderedCollection new.
	selection add: watcher1.
	browser selectedWatchers: selection.
	browser resumeSelectedWatchers.
	self assert: watcher1 paused not.
	self assert: watcher2 paused
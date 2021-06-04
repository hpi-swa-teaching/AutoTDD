ui-simulation
addEmptyWatchers: aAmount
	
	| watcherWindow |
	
	aAmount
		timesRepeat: [
			watcherWindow := browser createWatcher.
			watcherWindow save ]
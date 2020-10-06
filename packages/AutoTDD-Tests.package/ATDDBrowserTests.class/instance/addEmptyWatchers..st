ui-simulation
addEmptyWatchers: aAmount
	
	| watcherWindow |
	
	aAmount
		timesRepeat: [
			watcherWindow := browser addWatcher.
			watcherWindow save ]
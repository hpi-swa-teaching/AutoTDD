updating
updateWatcherStatus
	
	self status = 'finished' ifTrue: [ self watcher updateLocalStatusTo: self testStatus ] ifFalse: [ self watcher updateLocalStatusTo: self status ]
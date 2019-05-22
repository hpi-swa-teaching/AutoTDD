accessing
updateWatcherStatus
	self testResult 
		ifNil: [ self watcher localStatus: 'not executed' ]
		ifNotNil: [
				self watcher localStatus: self testResult asString.
			 ]
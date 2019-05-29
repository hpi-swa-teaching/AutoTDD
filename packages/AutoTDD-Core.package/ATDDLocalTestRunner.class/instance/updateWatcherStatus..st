accessing
updateWatcherStatus: progressValueHolder
	self flag: #todo. "refactor"
	self testResult 
		ifNil: [progressValueHolder
				ifNil: [self watcher localStatus: 'not executed'] 
				ifNotNil: [
					self watcher localStatus: 'executing'.
					self watcher localProgress: progressValueHolder]]
		ifNotNil: [
			self watcher localStatus: self testResult asString.
		 ]
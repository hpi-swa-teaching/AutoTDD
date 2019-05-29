accessing
updateWatcherStatus
	self flag: #todo. "refactor"
	(self status = #unexecuted)
		ifTrue: [self watcher localStatus: 'not executed'].
	(self status = #executing)
		ifTrue: [
			self watcher localStatus: 'executing'.
			self watcher localProgress: self testSuite valueHolder].
	(self status = #finished)
		ifTrue: [	self watcher localStatus: (self testResults at: 1) asString]
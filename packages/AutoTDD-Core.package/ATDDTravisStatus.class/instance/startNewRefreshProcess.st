accessing
startNewRefreshProcess
	^ [[true] whileTrue: [
			(Delay forSeconds: self refreshInterval) wait.
			self refresh.
		]] forkAt: Processor userBackgroundPriority
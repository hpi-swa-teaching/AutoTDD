accessing
timerMethod

	[ true ] whileTrue: [ 
		(Delay forSeconds: self class refreshInterval) wait.
		self clearCacheAndNotify ]
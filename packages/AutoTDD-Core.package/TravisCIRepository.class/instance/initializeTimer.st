initialize-release
initializeTimer

	self timer: [
		[ true ] whileTrue: [ 
			(Delay forSeconds: self class refreshInterval) wait.
			self clearCacheAndNotify ] ] fork
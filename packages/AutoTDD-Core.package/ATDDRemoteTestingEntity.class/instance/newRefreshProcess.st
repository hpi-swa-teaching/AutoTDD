action
newRefreshProcess
	
	^ [[ true ] whileTrue: [
			(Delay forSeconds: self refreshInterval) wait.
			self refresh ] ]
		forkAt: Processor userBackgroundPriority
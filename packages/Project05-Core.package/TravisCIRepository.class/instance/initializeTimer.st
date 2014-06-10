as yet unclassified
initializeTimer

	self timer: [
		[ true ] whileTrue: [ 
			(Delay forSeconds: self class refreshInterval) wait.
			self update ] ] fork
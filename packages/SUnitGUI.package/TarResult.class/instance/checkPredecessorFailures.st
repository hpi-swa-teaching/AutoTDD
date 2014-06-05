utility
checkPredecessorFailures
	self predecessor testResultFailures keysAndValuesDo: [ :oldFailedTestCase :isNew | 
		(self testResultFailures includesKey: oldFailedTestCase) ifTrue: [
			self testResultFailures at: oldFailedTestCase put: false
		]
	]
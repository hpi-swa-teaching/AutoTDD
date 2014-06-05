utility
checkPredecessorErrors
	self predecessor testResultErrors keysAndValuesDo: [ :oldErroredTestCase :isNew | 
		(self testResultErrors includesKey: oldErroredTestCase) ifTrue: [
			self testResultErrors at: oldErroredTestCase put: false
		]
	]
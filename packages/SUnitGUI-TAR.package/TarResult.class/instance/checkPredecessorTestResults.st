utility
checkPredecessorTestResults
	self predecessor isNil ifFalse:[
		self checkPredecessorFailures;
			checkPredecessorErrors
	]
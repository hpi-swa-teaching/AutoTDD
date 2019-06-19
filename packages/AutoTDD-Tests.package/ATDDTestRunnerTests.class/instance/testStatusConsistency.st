as yet unclassified
testStatusConsistency
	self assert: emptyRunner status isNil.
	emptyRunner status: #unexecuted.
	self assert: emptyRunner status = #unexecuted.
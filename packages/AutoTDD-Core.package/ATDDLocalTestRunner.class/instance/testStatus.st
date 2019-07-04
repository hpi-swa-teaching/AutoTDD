accessing
testStatus
	| recentTestResults |
	recentTestResults := self testResults first.
	recentTestResults hasPassed
		ifTrue: [^ #passed].
	recentTestResults hasFailures
		ifTrue: [^ #failed].
	recentTestResults hasErrors
		ifTrue: [^ #errored]
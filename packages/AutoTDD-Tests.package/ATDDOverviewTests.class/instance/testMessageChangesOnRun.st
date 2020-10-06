running
testMessageChangesOnRun
	
	| postMessage preMessage |
	
	preMessage := overview overallLocalMessage.
	watchers do: [ :each | each run ].
	postMessage := overview overallLocalMessage.
	self assert: preMessage ~= postMessage
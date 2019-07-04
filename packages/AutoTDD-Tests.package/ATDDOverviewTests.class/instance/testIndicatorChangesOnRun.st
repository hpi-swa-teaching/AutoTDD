running
testIndicatorChangesOnRun
	| postIndicator preIndicator |
	
	preIndicator := overview overallLocalIndicator.
	watchers do: [:each | each run].
	postIndicator := overview overallLocalIndicator.
	
	self assert: preIndicator ~= postIndicator
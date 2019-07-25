initialize-release
buildStatus
	
	| buildStatus |
	
	buildStatus := self parser parseBuildFrom: self firstBuildJson.
	
	^ (buildStatus at: #state) asSymbol
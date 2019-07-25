initialize-release
status
	
	| buildStatus |
	
	buildStatus := self parser parseBuildFrom: self firstBuildJson.
	
	^ (buildStatus at: #state) , ' message: ' , (buildStatus at: #message)
		, ' branch: ' , (buildStatus at: #branch) , ' author: '
		, (buildStatus at: #author)
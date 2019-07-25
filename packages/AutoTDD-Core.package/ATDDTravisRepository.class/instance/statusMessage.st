accessing
statusMessage
	
	| buildInfo |
	
	buildInfo := self parser parseBuildFrom: self firstBuildJson.
	
	^ (buildInfo at: #state) = #unknown
		ifTrue: [ 'not available' ]
		ifFalse: [ (buildInfo at: #state) 
					, ' message: ', (buildInfo at: #message)
					, ' branch: ' , (buildInfo at: #branch)
					, ' author: ' , (buildInfo at: #author) ]
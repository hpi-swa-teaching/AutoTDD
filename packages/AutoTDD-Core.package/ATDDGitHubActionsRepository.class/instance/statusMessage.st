accessing
statusMessage
	
	| buildInfo |
	
	buildInfo := self parser parseWorkflowFrom: self latestWorkflowJson.
	
	^ (buildInfo at: #conclusion) = #unknown
		ifTrue: [ 'not available' ]
		ifFalse: [ (buildInfo at: #conclusion),
					' message: ', (buildInfo at: #message),
					' branch: ', (buildInfo at: #branch),
					' author: ', (buildInfo at: #author) ]
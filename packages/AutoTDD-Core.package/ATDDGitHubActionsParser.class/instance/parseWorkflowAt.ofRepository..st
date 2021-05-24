primitive-parsing
parseWorkflowAt: aNumber ofRepository: aJson
	
	^ IdentityDictionary new
		at: #number put: ( self parseWorkflowRunNumberAt: aNumber ofRepository: aJson );
		at: #conclusion put: ( self parseWorkflowConclusionAt: aNumber ofRepository: aJson );
		at: #message put: ( self parseMessageAt: aNumber ofRepository: aJson );
		at: #branch put: ( self parseHeadBranchAt: aNumber ofRepository: aJson );
		yourself
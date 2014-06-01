accessing
jobs

	| matrix id |
	id := self parser parseIdOfBuildAt: self selectedBuild ofBuildsOfRepository: self repositoryJson.
	matrix := (self parser parseBuildMatrixOfBuild: (self buildJsonFor: id)).	
	^ (matrix collect: [ :job |
		Text new
			append: '#', (job at: #env);
			addAttribute: (TextColor new
				color: (self convertColorForState: (job at: #state)))])
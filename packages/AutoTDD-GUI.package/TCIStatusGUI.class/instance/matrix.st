accessing
matrix

	| matrix id |
	id := self parser parseIdOfBuildAt: self selectedBuild
		ofBuildsOfRepository: self data repositoryJson.
	matrix := self parser parseBuildMatrixOfBuild: (self data buildJsonFor: id).
	^ matrix collect: [ :job |
		Text new
			append: '#', (job at: #number), String space, (job at: #env);
			addAttribute: (TextColor new
				color: (self convertColorForState: (job at: #state))) ]
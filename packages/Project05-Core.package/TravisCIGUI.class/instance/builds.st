accessing
builds

	| history |
	history := self parser parseBuildHistoryOfRepository: self repositoryJson.
	^ (history collect: [ :build | Text new
			append: 
				'#',(build at: #number),
				String space, (build at: #branch);
			addAttribute: (TextColor new
				color: (self convertColorForState: (build at: #state)))])
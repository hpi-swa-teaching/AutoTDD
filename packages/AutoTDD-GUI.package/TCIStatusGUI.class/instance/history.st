accessing
history

	| history |
	history := self parser parseBuildHistoryOfRepository: self data repositoryJson.
	^ history collect: [ :build |
		Text new
			append: '#', (build at: #number), String space, (build at: #branch);
			addAttribute: (TextColor new
				color: (self convertColorForState: (build at: #state))) ]
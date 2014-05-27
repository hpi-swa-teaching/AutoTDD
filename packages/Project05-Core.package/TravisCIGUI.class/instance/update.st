updating
update

	| json history |
	json := self client getJsonForBuildsOfRepository: self repository.
	history := self parser parseBuildHistoryOfRepository: json.
	self builds: (history collect: [ :build |
		'#', (build at: #number),
		String space, (build at: #state),
		String space, (build at: #branch) ])
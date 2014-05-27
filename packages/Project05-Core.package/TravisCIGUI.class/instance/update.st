updating
update

	| json |
	json := self client getJsonForBuildsOfRepository: self repository.
	self builds: (self parser parseBuildHistoryForJsonOfRepository: json)
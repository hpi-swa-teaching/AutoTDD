as yet unclassified
update

	self repositoryJson: (self client getJsonForBuildsOfRepository: self repository).
	self logsDictionary: IdentityDictionary new.
	self buildsDictionary: IdentityDictionary new.
	self notify
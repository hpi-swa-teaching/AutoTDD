class initialization
newForOwner: anOwnerString repository: aRepositoryString
	
	^ self new
		owner: anOwnerString;
		repository: aRepositoryString;
		yourself
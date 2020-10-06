updating
changedWatchers
	
	self watchers: (self watchers select: [ :each | each valid ]).
	localMessage contents: self overallLocalMessage.
	localIndicator contents: self overallLocalIndicator
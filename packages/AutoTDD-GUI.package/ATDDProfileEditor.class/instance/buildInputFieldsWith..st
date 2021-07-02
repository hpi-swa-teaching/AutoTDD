building
buildInputFieldsWith: aBuilder
	
	^ OrderedCollection new
		add: ((self buildTravisTokenWith: aBuilder)
				frame: self travisTokenFrame;
				yourself);
		add: ((self buildGitHubTokenWith: aBuilder)
				frame: self gitHubTokenFrame;
				yourself);
		yourself
building
buildTestingSpacerWith: aBuilder
	^ aBuilder pluggableSpacerSpec new
		model: self;
		color: self spacerColor;
		yourself.
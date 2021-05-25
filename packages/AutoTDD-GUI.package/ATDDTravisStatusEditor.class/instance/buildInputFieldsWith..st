building
buildInputFieldsWith: aBuilder
	
	^ (super buildInputFieldsWith: aBuilder)
		add: ((self buildUseProCheckboxWith: aBuilder)
				frame: self useProCheckBoxFrame;
				yourself);
		yourself
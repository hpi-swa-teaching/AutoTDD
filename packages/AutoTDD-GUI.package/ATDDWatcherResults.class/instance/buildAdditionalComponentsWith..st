building
buildAdditionalComponentsWith: aBuilder
	^ (OrderedCollection new
			add: ((self buildTestsWith: aBuilder)
				frame: self testsFrame;
				yourself);
			yourself)
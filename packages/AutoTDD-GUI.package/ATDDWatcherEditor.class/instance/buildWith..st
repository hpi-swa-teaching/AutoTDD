building
buildWith: aBuilder
	
	| window |
	self builder: aBuilder.
	window := aBuilder pluggableWindowSpec new
		model: self; label: self label; extent: self extent; 
		children: (OrderedCollection new 
			addAll: (self buildPackageSelectionWith: aBuilder);
			addAll: (self buildSettingsWith: aBuilder);
			add: ((self buildTestingSpacerWith: aBuilder)
				frame: self testingSpacerFrame;
				yourself);
			add: ((self buildButtonsWith: aBuilder)
				frame: self buttonsFrame;
				yourself);
			yourself);
		yourself.
		
	^aBuilder build: window
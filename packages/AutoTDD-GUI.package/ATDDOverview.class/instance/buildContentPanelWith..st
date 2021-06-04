building
buildContentPanelWith: aBuilder
	
	| children |
	
	children := OrderedCollection new.
	ATDDTestingEntity testingEntities do: [:aSymbol |
		(self testingEntityCollectionDictionary at: aSymbol) ifNotEmpty: [
			children addLast: (self buildTestingEntityPanelOfType: aSymbol with: aBuilder)
			]
		].
	 
	^ aBuilder pluggablePanelSpec new
		model: self;
		layout: #horizontal;
		children: (OrderedCollection new
				addAll: children;
				yourself);
		yourself
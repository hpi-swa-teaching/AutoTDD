building
buildTestingEntitiesFor: aTestingEntityUIDictionary layout: anOrientation with: aBuilder
	
	| panel index aUIDictionary |
	
	index := 0.
	panel := aBuilder pluggablePanelSpec new
		model: self;
		layout: anOrientation;
		children: OrderedCollection new.
		
	self class testingEntityArray do: [:aSymbol |	
		aUIDictionary := (aTestingEntityUIDictionary at: aSymbol).
		panel children addLast: ((self buildTestEntityUIFor: aUIDictionary testingEntityType: aSymbol with: aBuilder))
		].
	
	^ panel
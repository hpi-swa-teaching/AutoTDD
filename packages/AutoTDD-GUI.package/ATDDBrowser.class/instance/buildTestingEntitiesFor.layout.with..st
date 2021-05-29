building
buildTestingEntitiesFor: aTestingEntityUIDictionary layout: anOrientation with: aBuilder
	
	| panel index aUIDictionary |
	
	index := 0.
	panel := aBuilder pluggablePanelSpec new
		model: self;
		layout: anOrientation;
		children: OrderedCollection new.
		
	ATDDTestingEntity testingEntities do: [:aString |	
		aUIDictionary := (aTestingEntityUIDictionary at: aString).
		panel children addLast: ((self buildTestEntityUIFor: aUIDictionary with: aBuilder))
		].
	
	^ panel
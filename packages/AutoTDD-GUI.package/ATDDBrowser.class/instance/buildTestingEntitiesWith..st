building
buildTestingEntitiesWith: aBuilder
	
	| panel index |
	
	index := 0.
	panel := aBuilder pluggablePanelSpec new
		model: self;
		layout: #vertical;
		children: OrderedCollection new.
		
	ATDDTestingEntity testingEntities do: [:aSymbol |
		panel children addLast: ((self buildTestingEntityUIOfType: aSymbol with: aBuilder))
		].
	
	^ panel
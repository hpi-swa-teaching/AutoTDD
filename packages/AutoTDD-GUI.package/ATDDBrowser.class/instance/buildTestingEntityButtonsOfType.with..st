building
buildTestingEntityButtonsOfType: aSymbol with: aBuilder

	| panel |
	
	panel := aBuilder pluggablePanelSpec new
		model: self;
		layout: #horizontal;
		children: OrderedCollection new.
		
	((self class testingEntityUIDictionary at: aSymbol) at: 'functionalityDictionary') keysAndValuesDo: [
		:aString :aMethod |
		panel children addLast: (
			self buildButtonPerforming: aMethod 
				withLabel: aString 
				with: aBuilder
		).
	].
		
	^ panel
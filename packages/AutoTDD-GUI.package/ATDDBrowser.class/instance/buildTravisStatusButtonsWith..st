building
buildTravisStatusButtonsWith: aBuilder
	
	| panel |
	
	panel := aBuilder pluggablePanelSpec new
		model: self;
		layout: #horizontal;
		children: OrderedCollection new.
		
	self class travisStatusFunctionalityDictionary keysAndValuesDo: [
		:aString :aMethod |
		panel children addLast: (
			self buildButtonWithMethod: aMethod 
				withLabel: aString 
				with: aBuilder
		).
	].
		
	^ panel
	

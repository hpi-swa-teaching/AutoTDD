building
buildButtonsFor: aFunctionalityDictionary layout: anOrientation with: aBuilder
	"anOrientation can be one of:
		#proportional (default): Use frames as appropriate.
		#horizontal: Arrange the elements horizontally
		#vertical: Arrange the elements vertically."
	
	| panel |
	
	panel := aBuilder pluggablePanelSpec new
		model: self;
		layout: anOrientation;
		children: OrderedCollection new.
		
	aFunctionalityDictionary keysAndValuesDo: [
		:aString :aMethod |
		panel children addLast: (
			self buildButtonWithMethod: aMethod 
				withLabel: aString 
				with: aBuilder
		).
	].
		
	^ panel
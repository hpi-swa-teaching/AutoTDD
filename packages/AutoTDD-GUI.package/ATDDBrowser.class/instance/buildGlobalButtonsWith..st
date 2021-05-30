building
buildGlobalButtonsWith: aBuilder
	"anOrientation can be one of:
		#proportional (default): Use frames as appropriate.
		#horizontal: Arrange the elements horizontally
		#vertical: Arrange the elements vertically."
	
	| panel |
	
	panel := aBuilder pluggablePanelSpec new
		model: self;
		layout: #horizontal;
		children: OrderedCollection new.
		
	(self class globalFunctionalityDictionary) keysAndValuesDo: [
		:aString :aMethod |
		panel children addLast: (
			self buildButtonPerforming: aMethod 
				withLabel: aString 
				with: aBuilder
		).
	].
		
	^ panel
constants
extendNameButtonClicked
	
	self nameExpanded
		ifFalse: [
			self createNameMorph.
			self extendNameButton state: #on ]
		ifTrue: [
			self nameMorph delete.
			self extendNameButton state: #off ]
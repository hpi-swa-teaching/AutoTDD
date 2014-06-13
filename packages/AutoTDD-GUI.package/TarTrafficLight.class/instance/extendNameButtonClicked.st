event handling
extendNameButtonClicked
	
	self nameExpanded: self nameExpanded not.
	self nameExpanded
		ifTrue: [ 
			self createNameMorph.
			self extendNameButton state: #on ]
		ifFalse: [
			self nameMorph delete.
			self extendNameButton state: #off ]
event handling
extendNameButtonClicked
	
	self nameExpanded
		ifFalse: [ | morph |
			morph := self nameMorph.
			self removeMorph: morph.
			self addMorph: morph.
			self nameMorph visible: true.
			self extendNameButton state: #on ]
		ifTrue: [  | morph |
			morph := self nameMorph.
			self removeMorph: morph.
			self addMorph: morph.
			self nameMorph visible: false.
			self extendNameButton state: #off ].
	self nameExpanded: self nameExpanded not
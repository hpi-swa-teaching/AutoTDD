event handling
extendNameButtonClicked
	self nameExpanded
		ifTrue: [ self nameMorph visible: false.
			self extendNameButton label: '^' ]
		ifFalse: [ self nameMorph visible: true.
			self extendNameButton label: 'v' ].
	self nameExpanded: self nameExpanded not
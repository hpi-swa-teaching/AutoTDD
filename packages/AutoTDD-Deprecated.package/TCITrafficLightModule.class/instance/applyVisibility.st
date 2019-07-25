utility
applyVisibility
	
	self use ifTrue: [ self showModule ] ifFalse: [ self hideModule ].
	self owner ifNotNilDo: [ :owner | owner updateExtent ]
updating
update

	self changedValues.
	(self state ~= self previousState) ifTrue: [ self playSoundForState: self state ].
	self previousState: self state
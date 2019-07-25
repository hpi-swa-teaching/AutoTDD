event handling
proOnOffButtonClicked
	
	self usePro: self usePro not.
	self proOnOffButton state: (self usePro ifTrue: [ #on ] ifFalse: [ #off ]).
	(self use not and: [ self usePro ]) ifTrue: [ self onOffButtonClicked ]
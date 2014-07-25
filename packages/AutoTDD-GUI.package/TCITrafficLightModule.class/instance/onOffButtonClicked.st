event handling
onOffButtonClicked

	super onOffButtonClicked.
	(self use not and: self usePro) ifTrue: [ self proOnOffButtonClicked ]
as yet unclassified
onOffButtonClicked

	super onOffButtonClicked.
	(self use not and: self usePro) ifTrue: [ self proOnOffButtonClicked ]
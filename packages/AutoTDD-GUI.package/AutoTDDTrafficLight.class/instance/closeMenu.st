utility
closeMenu

	self updateExtent.
	self modules do: [ :each | each closeSettings ]
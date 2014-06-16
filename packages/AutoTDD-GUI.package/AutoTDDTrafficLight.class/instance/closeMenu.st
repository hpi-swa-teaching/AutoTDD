utility
closeMenu

	self extent: self class extent.
	self modules do: [ :each | each closeSettings ]
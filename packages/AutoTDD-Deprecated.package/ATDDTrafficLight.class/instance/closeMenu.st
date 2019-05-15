utility
closeMenu

	self extent: self fullExtent.
	self modules do: [ :each | each closeSettings ]
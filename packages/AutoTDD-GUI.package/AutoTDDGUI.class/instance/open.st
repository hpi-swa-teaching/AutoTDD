open/close
open

	self window: SystemWindow new.
	self
		createComponents;
		update.
	self window openInWorld.
	self window extent: self class extent
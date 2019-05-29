open/close
open

	self window: SystemWindow new.
	self
		createComponents;
		update.
	self window
		openInWorld;
		extent: self class extent
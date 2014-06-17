open/close
open

	^ self
		createComponents;
		openInWorld;
		extent: self class extent;
		update;
		yourself
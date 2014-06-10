as yet unclassified
open

	^ self
		createComponents;
		openInWorld;
		extent: self class extent;
		update;
		yourself
as yet unclassified
newWithConfig: config
	^ self new
		name: (config at: 'name');
		yourself
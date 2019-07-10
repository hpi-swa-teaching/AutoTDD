accessing
extent
	((self watchers notEmpty and: [self travisStatuses isEmpty])
			or: (self watchers isEmpty and: [self travisStatuses notEmpty]))
		ifTrue: [^ self class defaultExtent x / 2 @ self class defaultExtent y].
	^ self class defaultExtent
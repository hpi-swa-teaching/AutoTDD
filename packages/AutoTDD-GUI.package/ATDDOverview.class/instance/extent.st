accessing
extent
	((self watchers size > 0 and: self travisStatuses size = 0)
			or: (self watchers size = 0 and: self travisStatuses size > 0))
		ifTrue: [^ self class defaultExtent x / 2 @ self class defaultExtent y].
	^ self class defaultExtent
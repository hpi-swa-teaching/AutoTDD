utilities
findCategoriesForBaseClass: aClass
	
	| visible |
	
	"copied from TestRunner"
	visible := Set new.
	aClass
		withAllSubclassesDo: [ :each |
			each category ifNotNil: [ :category |
				visible add: category ] ].
	
	^ Array
		streamContents: [ :stream |
			Smalltalk organization categories
				do: [ :each |
					(visible includes: each)
						ifTrue: [ stream nextPut: each ] ] ]
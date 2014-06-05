accessing-ui
representsSameBrowseeAs: anotherModel 
	^ self class = anotherModel class
	and: [ classesSelected = anotherModel classesSelected ]
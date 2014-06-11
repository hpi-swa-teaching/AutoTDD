action
openWidget
	(self selectedCategories notEmpty and: [ self selectedTestCategories notEmpty ]) 
		ifTrue: [ ^ TarTrafficLight initializeForCategories: self selectedCategories withTestsIn: self selectedTestCategories ]
action
openWidget
	
	(self selectedCategories notEmpty and: [ self selectedTestCategories notEmpty ]) 
		ifTrue: [ ^ ATDDTrafficLight openForCategories: self selectedCategories withTestsIn: self selectedTestCategories ]
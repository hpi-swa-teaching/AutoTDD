action
openWidget
	
	(self selectedCategories notEmpty and: [ self selectedTestCategories notEmpty ]) 
		ifTrue: [ ^ AutoTDDTrafficLight openForCategories: self selectedCategories withTestsIn: self selectedTestCategories ]
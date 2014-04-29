action
openWidget
	(self selectedCategory notNil and: [ self selectedTestCategory notNil ]) 
		ifTrue: [ ^ TarTrafficLight initializeForCategory: self selectedCategory withTestsIn: self selectedTestCategory ]
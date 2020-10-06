utilities
findClassesForCategoriesList: aCollection
	
	^ aCollection asArray
		replace: [ :class | class withAllSuperclasses reverseInPlace ];
		sort: [ :a :b | self sortClass: a before: b ];
		replace: [ :hierarchyList | hierarchyList last ]
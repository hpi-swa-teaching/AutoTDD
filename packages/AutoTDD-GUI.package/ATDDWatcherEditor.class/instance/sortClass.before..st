utility
sortClass: firstHierarchyList before: secondHierarchyList
	
	1
		to: (firstHierarchyList size min: secondHierarchyList size)
		do: [ :index |
			(firstHierarchyList at: index)
				== (secondHierarchyList at: index) ifFalse: [ ^ (firstHierarchyList at: index) name <= (secondHierarchyList at: index) name ] ].
	
	^ secondHierarchyList includes: firstHierarchyList last
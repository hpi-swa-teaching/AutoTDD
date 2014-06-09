initialize-release
initializeForCategory: categoryName withTestsIn: testCategoryName 
	
	| x y |
	x := self class extent x.
	y := self class extent y.
	self listenForNotificationsAbout: categoryName withTestsIn: testCategoryName.
	self position: self class instances size * x \\ (World width - x) @ (self class instances size * x // (World width - x) * y \\ (World height - y) + 30).
	self class instances add: self
tests
openedWindows
	self flag: #todo "string res".
	^ SystemWindow
		windowsIn: World
		satisfying: [:w | w label startsWith: 'Test Auto Runner']
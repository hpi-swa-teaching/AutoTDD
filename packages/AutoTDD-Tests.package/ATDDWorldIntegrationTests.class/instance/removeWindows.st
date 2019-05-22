tests
removeWindows
	self openedWindows
		do: [:each | each model canDiscardEdits
				ifTrue: [each delete]]
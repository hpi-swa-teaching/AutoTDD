tests
testDistantPlacing
	| tar dx dy |
	tar := Array new: 5.
	1
		to: 5
		do: [ :i | 
			tar
				at: i
				put: (TarTrafficLight initializeForCategory: 'SUnitGUI-TAR-Tests' withTestsIn: 'SUnitGUI-Tests-Dummy').
			widgetBag
				add: (tar at: i) ].
	1
		to: 5
		do: [ :x | 1
				to: 5
				do: [ :y | x = y
						ifFalse: [ dx := (tar at: x) position x - (tar at: y) position x.
							dy := (tar at: x) position y - (tar at: y) position y.
							self assert: 100 * 100 < (dx * dx + (dy * dy)) ] ] ]
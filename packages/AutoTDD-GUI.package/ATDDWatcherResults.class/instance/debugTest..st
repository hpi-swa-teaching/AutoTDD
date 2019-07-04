action
debugTest: aTest
	(self testsUnformatted at: self selectedTest ifAbsent: [ ^ self ]) debug
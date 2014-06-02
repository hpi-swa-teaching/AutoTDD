tests
testValues

	| gui samples |
	samples := {self sampleRepositoryBuilds. self emptyRepositoryBuilds}.
	gui := TravisCIGUI new.
	samples do: [ :each | 
		gui repositoryJson: each.
		self
			assert: gui history isArray;
			assert: (gui history allSatisfy: [ :build | build isString or: [ build isText ] ]);
			assert: gui matrix isArray;
			assert: (gui matrix allSatisfy: [ :job | job isString or: [ job isText ] ]);
			assert: gui stateColor isColor ]
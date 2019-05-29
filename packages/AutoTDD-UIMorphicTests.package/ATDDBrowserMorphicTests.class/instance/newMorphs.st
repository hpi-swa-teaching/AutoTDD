running
newMorphs
	^ World submorphs 
		reject: [:each | preTestMorphs includes: each]
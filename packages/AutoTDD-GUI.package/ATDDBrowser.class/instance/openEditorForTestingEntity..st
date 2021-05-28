action
openEditorForTestingEntity: aTestingEntity

	^ aTestingEntity notNil ifTrue: [
		(self class testingEntityEditorDictionary at: aTestingEntity class symbol) openForTarget: aTestingEntity
		]
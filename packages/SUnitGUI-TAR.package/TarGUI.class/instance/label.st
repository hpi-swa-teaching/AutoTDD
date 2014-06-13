as yet unclassified
label

	| label |
	label := 'TestAutoRunner: '.
	self categories do: [ :each | label := label, ' ', each ].
	label := label, '; '.
	self testCategories do: [ :each | label := label, ' ', each ].
	^ label
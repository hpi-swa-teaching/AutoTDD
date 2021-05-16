constants
loadImage: aString

	| fileName |
	fileName := 'AutoTDD/images/', aString.
	
	^ ImageMorph new
		image: (Form fromFileNamed: (FileDirectory uri: fileName) fullName);
		yourself
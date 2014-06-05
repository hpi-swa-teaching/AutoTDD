gui
setUpUrlField
	self urlField: TextFieldMorph  new.
	
	self urlField
		extent: 200@40; 
		position: self topRight + (0 @ 40);
		fontName: 'Arial' size: 4; 
		contents: self travisSource.
	
	Transcript show: self urlField contents.	
	self addMorph: urlField..
	
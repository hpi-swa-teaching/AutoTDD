utility
setNameText
	| name hintText |
	name := TextMorph new.
	hintText := 'Category: ' , self category , ' Test Category: ' , self testCategory.
	name contents: hintText;
		fontName: self fontName size: self fontSize;
		color: self blue;
		position: self nameMorph position + (5 @ 0).
	self nameMorph addMorph: name.
	self balloonText: hintText.
	self nameMorph
		extent: name extent + (10 @ 0);
		position: (self position - (0 @ self nameMorph height))
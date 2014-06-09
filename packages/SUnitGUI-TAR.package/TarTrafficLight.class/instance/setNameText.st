utility
setNameText
	| name hintText |
	name := TextMorph new.
	hintText := 'Category: ' , self category , ' Test Category: ' , self testCategory.
	name contents: hintText;
		fontName: self class fontName size: self class fontSize;
		color: self class fontColor;
		position: self nameMorph position + (5 @ 0).
	self nameMorph addMorph: name.
	self balloonText: hintText.
	self nameMorph
		extent: name extent + (10 @ 0);
		position: (self position - (0 @ self nameMorph height))
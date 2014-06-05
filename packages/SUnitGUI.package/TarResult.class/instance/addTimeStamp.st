adding
addTimeStamp
	self timeStampMorph: (TextMorph new contents: ((TimeStamp now time) asString)).
	self timeStampMorph position: self position + (5@0).
	self addMorph: self timeStampMorph
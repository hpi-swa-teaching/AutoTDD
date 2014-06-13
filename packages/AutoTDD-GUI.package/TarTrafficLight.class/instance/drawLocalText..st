drawing
drawLocalText: aCanvas
	
	self drawText: 'Local' on: aCanvas centeredAt: (self position + (self localAxis @ 15))
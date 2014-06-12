drawing
drawTravisText: aCanvas

	self drawText: 'Travis CI' on: aCanvas centeredAt: (self position + (self travisAxis @ 15))
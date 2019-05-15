displaying
display: item atRow: row on: canvas
	"display the given item at row row"
	"copied from SWALint"
	| drawBounds color col |
	drawBounds := self drawBoundsForRow: row.
	drawBounds := drawBounds intersect: self bounds.
	item isText
		ifTrue: [ 
			col := (item attributesAt: 1) detect: [:a | a isKindOf: TextColor] ifNone: [].
			color := col ifNil: [self colorForRow: row] ifNotNil: [col color].
			canvas drawString: item in: drawBounds font: (font emphasized: (item emphasisAt: 1)) color: color ]
		ifFalse: [ canvas drawString: item in: drawBounds font: font color: (self colorForRow: row) ]
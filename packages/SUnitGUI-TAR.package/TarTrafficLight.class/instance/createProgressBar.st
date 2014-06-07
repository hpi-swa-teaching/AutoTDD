gui
createProgressBar
	
	| progressBar |
	progressBar := ProgressBarMorph new
		extent: 80@10;
		position: self position + (12@125);
		borderWidth: 0;
		color: (Color
				r: 233
				g: 233
				b: 233
				range: 255);
		progressColor: (Color
				r: 194
				g: 211
				b: 230
				range: 255);
		name: 'progressBar';
		yourself.
	self addMorph: progressBar.
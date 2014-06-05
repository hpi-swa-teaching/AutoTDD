gui
createProgressBar
	self progressBar: ProgressBarMorph new.
	self progressBar 
		extent: 60@10;
		position: self position + (20@110);
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
				range: 255).
	self addMorph: self progressBar.
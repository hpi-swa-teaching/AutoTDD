gui
createProgressBar
	
	| progressBar |
	progressBar := ProgressBarMorph new
		extent: 80@10;
		position: self position + (12@125);
		borderWidth: 0;
		color: self gray;
		progressColor: self lightBlue;
		name: 'progressBar';
		yourself.
	self addMorph: progressBar.
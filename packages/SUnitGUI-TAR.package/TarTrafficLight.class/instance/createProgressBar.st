gui
createProgressBar
	
	| progressBar |
	progressBar := ProgressBarMorph new
		extent: 205@10;
		position: self position + (10@125);
		borderWidth: 0;
		color: self class gray;
		progressColor: self class lightBlue;
		name: 'progressBar';
		visible: false;
		yourself.
	self addMorph: progressBar.
components
createProgressBar
	
	| progressBar |
	progressBar := ProgressBarMorph new
		extent: (self width - 20) @ 10;
		borderWidth: 0;
		color: self class gray;
		progressColor: self class lightBlue;
		name: 'progressBar';
		visible: false;
		yourself.
	self center: progressBar at: (self bottomCenter - (0 @ 20)).
	self addMorph: progressBar
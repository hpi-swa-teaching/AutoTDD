as yet unclassified
createProgressBar
	
	| progressBar |
	progressBar := ProgressBarMorph new
		extent: (self owner width - 20) @ 10;
		borderWidth: 0;
		color: self class gray;
		progressColor: self class lightBlue;
		name: 'progressBar';
		visible: false;
		yourself.
	self center: progressBar at: (self owner bottomCenter - (0 @ 20)).
	self addMorph: progressBar
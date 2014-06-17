building
createProgressBar
	
	| progressBar |
	progressBar := ProgressBarMorph new
		borderWidth: 0;
		color: Color red;
		progressColor: self class lightBlue;
		name: 'progressBar';
		yourself.
	self addMorph: progressBar fullFrame: self progressBarFrame.
	progressBar color: self class lightGray
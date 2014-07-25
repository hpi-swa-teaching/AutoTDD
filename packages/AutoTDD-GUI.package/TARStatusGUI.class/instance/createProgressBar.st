building
createProgressBar
	
	| progressBar |
	progressBar := ProgressBarMorph new
		borderWidth: 0;
		color: Color red;
		progressColor: self class lightBlue;
		name: 'progressBar';
		color: self class lightGray;
		yourself.
	self window addMorph: progressBar fullFrame: self progressBarFrame
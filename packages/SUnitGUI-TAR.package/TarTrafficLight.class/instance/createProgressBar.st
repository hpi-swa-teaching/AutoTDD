gui
createProgressBar
	self progressBar: ProgressBarMorph new.
	self progressBar 
		extent: 110@10;
		position: self position + (3@80);
		color: Color white;
		progressColor: Color gray darker.
	self addMorph: self progressBar.
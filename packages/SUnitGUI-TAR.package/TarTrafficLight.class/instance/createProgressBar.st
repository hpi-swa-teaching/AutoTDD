gui
createProgressBar
	self progressBar: ProgressBarMorph new.
	self progressBar 
		extent: 100@10;
		position: self position + (0@80);
		color: Color white;
		progressColor: Color gray darker.
	self addMorph: self progressBar.
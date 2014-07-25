utility
emptyRepositoryBuilds

	^ Json readFrom: '{"builds":[],"commits":[]}' readStream
as yet unclassified
createSar

	| preamble zip |
	
	zip := ZipArchive new.
	preamble := String streamContents: [:preambleStream |
	    preambleStream
	        nextPutAll: '| loader |
	loader := MCVersionLoader new.';
	        cr.
	    (((self project version: 'baseline') allPackagesForSpecNamed: #default) collect: #name) do: [:name | | stream version |
	        stream := RWBinaryOrTextStream on: (String new: 10000).
	        version := MCVersion
	            package: (MCPackage named: name)
	            info: ((MCPackage named: 'AutoTDD-Core') workingCopy ancestry ancestors
					ifNotEmpty: #first
					ifEmpty: [MCVersionInfo name: name, '-generated.1' id: UUID new message: '' date: Date today time: Time now author: 'generated' ancestors: #()]).
	        version fileOutOn: stream.
	        (zip addString: stream contents as: name, '.mcz') desiredCompressionLevel: 0.
	        preambleStream
	            nextPutAll: 'loader addVersion: (MCMczReader versionFromStream: (self memberNamed: ''';
	            nextPutAll: name;
	            nextPutAll: '.mcz'') contentStream).';
	            cr].
	    preambleStream nextPutAll: 'loader load.'].
	zip addString: preamble as: 'install/preamble'.
	zip writeToFileNamed: 'AutoTDD.sar'
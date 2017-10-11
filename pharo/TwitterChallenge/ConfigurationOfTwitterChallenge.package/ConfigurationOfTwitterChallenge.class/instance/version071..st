versions
version071: spec
	<version: '0.7.1' imports: #('0.2-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'Fixing neo json and csv version.'.
		spec author: 'vitormcruz'.
		spec timestamp: '8/22/2016 22:57'.
		spec 
			project: 'LanguageExtension' with: '1.1';
			project: 'NeoCSV' with: '13';
			project: 'NeoJSON' with: '13';
			project: 'ZincHTTPComponents' with: '2.7.1'.
		spec 
			package: #TwitterChallenge with: 'TwitterChallenge-vitor.4';
			package: #'TwitterChallenge-ExternalAdapter' with: 'TwitterChallenge-ExternalAdapter-vitor.3';
			package: #'TwitterChallenge-ExternalConfig' with: 'TwitterChallenge-ExternalConfig-vitor.8';
			package: #'TwitterChallenge-Tests' with: 'TwitterChallenge-Tests-vitor.4'. ].

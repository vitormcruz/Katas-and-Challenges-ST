versions
version073: spec
	<version: '0.7.3' imports: #('0.3-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 0.7.3'.
		spec author: 'vitormcruz'.
		spec timestamp: '8/24/2016 16:49'.
		spec 
			project: 'LanguageExtension' with: '1.1';
			project: 'NeoCSV' with: '12';
			project: 'NeoJSON' with: '12';
			project: 'OSProcess' with: '4.6.4';
			project: 'Teapot' with: '2.1';
			project: 'ZincHTTPComponents' with: '2.7.1'.
		spec 
			package: #TwitterChallenge with: 'TwitterChallenge-vitor.4';
			package: #'TwitterChallenge-ExternalAdapter' with: 'TwitterChallenge-ExternalAdapter-vitor.3';
			package: #'TwitterChallenge-ExternalConfig' with: 'TwitterChallenge-ExternalConfig-vitor.8';
			package: #'TwitterChallenge-Tests' with: 'TwitterChallenge-Tests-vitor.4'. ].

versions
version080: spec
	<version: '0.8.0' imports: #('0.5-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 0.8.0'.
		spec author: 'vitormcruz'.
		spec timestamp: '9/6/2016 21:00'.
		spec 
			project: 'LanguageExtension' with: '1.1';
			project: 'NeoCSV' with: '12';
			project: 'NeoJSON' with: '12';
			project: 'OSProcess' with: '4.6.4';
			project: 'Teapot' with: '2.1';
			project: 'ZincHTTPComponents' with: '2.7.1'.
		spec 
			package: #TwitterChallenge with: 'TwitterChallenge-vitormcruz.7';
			package: #'TwitterChallenge-ExternalAdapter' with: 'TwitterChallenge-ExternalAdapter-vitormcruz.11';
			package: #'TwitterChallenge-ExternalConfig' with: 'TwitterChallenge-ExternalConfig-vitormcruz.14';
			package: #'TwitterChallenge-Tests' with: 'TwitterChallenge-Tests-vitormcruz.8'. ].

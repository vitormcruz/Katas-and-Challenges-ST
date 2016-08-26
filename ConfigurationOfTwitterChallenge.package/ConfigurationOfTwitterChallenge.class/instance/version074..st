versions
version074: spec
	<version: '0.7.4' imports: #('0.4-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 0.7.4'.
		spec author: 'vitormcruz'.
		spec timestamp: '8/25/2016 22:45'.
		spec 
			project: 'LanguageExtension' with: '1.1';
			project: 'NeoCSV' with: '12';
			project: 'NeoJSON' with: '12';
			project: 'OSProcess' with: '4.6.4';
			project: 'Teapot' with: '2.1';
			project: 'ZincHTTPComponents' with: '2.7.1'.
		spec 
			package: #TwitterChallenge with: 'TwitterChallenge-vitormcruz.6';
			package: #'TwitterChallenge-ExternalAdapter' with: 'TwitterChallenge-ExternalAdapter-vitormcruz.7';
			package: #'TwitterChallenge-ExternalConfig' with: 'TwitterChallenge-ExternalConfig-vitormcruz.10';
			package: #'TwitterChallenge-Tests' with: 'TwitterChallenge-Tests-vitormcruz.7'. ].

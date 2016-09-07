versions
version09: spec
	<version: '0.9' imports: #('0.5-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'Finishing fetching implementation and doing some polish.'.
		spec author: 'vitormcruz'.
		spec timestamp: '9/7/2016 14:06'.
		spec 
			project: 'LanguageExtension' with: '1.2';
			project: 'NeoCSV' with: '12';
			project: 'NeoJSON' with: '13';
			project: 'OSProcess' with: '4.6.4';
			project: 'Teapot' with: '2.1';
			project: 'ZincHTTPComponents' with: '2.7.1'.
		spec 
			package: #TwitterChallenge with: 'TwitterChallenge-vitormcruz.9';
			package: #'TwitterChallenge-ExternalAdapter' with: 'TwitterChallenge-ExternalAdapter-vitormcruz.13';
			package: #'TwitterChallenge-ExternalConfig' with: 'TwitterChallenge-ExternalConfig-vitormcruz.16';
			package: #'TwitterChallenge-Tests' with: 'TwitterChallenge-Tests-vitormcruz.9'. ].

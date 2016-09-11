versions
version11: spec
	<version: '1.1' imports: #('0.5-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'Minor adjustments and switing to json mimetype.'.
		spec author: 'vitormcruz'.
		spec timestamp: '9/11/2016 13:11'.
		spec 
			project: 'LanguageExtension' with: '1.2';
			project: 'NeoCSV' with: '12';
			project: 'NeoJSON' with: '13';
			project: 'OSProcess' with: '4.6.4';
			project: 'Teapot' with: '2.1';
			project: 'ZincHTTPComponents' with: '2.7.1'.
		spec 
			package: #TwitterChallenge with: 'TwitterChallenge-vitormcruz.10';
			package: #'TwitterChallenge-ExternalAdapter' with: 'TwitterChallenge-ExternalAdapter-vitormcruz.16';
			package: #'TwitterChallenge-ExternalConfig' with: 'TwitterChallenge-ExternalConfig-vitormcruz.17';
			package: #'TwitterChallenge-Tests' with: 'TwitterChallenge-Tests-vitormcruz.10'. ].

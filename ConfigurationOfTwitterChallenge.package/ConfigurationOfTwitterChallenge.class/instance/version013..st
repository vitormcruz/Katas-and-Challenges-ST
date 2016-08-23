versions
version013: spec
	<version: '0.1.3' imports: #('0.4-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'Ading smalltalk hub repository'.
		spec author: 'vitor'.
		spec timestamp: '8/22/2016 17:09'.
		spec 
			project: 'LanguageExtension' with: '1.0.2';
			project: 'NeoJSON' with: '13'.
		spec 
			package: #TwitterChallenge with: 'TwitterChallenge-vitor.3';
			package: #'TwitterChallenge-ExternalAdapter' with: 'TwitterChallenge-ExternalAdapter-vitor.2';
			package: #'TwitterChallenge-ExternalConfig' with: 'TwitterChallenge-ExternalConfig-vitor.6';
			package: #'TwitterChallenge-Tests' with: 'TwitterChallenge-Tests-vitor.3'. ].

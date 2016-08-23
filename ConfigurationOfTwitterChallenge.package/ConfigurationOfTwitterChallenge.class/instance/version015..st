versions
version015: spec
	<version: '0.1.5' imports: #('0.5-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'Adjustment to configuration.'.
		spec author: 'vitor'.
		spec timestamp: '8/22/2016 20:38'.
		spec 
			project: 'LanguageExtension' with: '1.1';
			project: 'NeoJSON' with: '13'.
		spec 
			package: #TwitterChallenge with: 'TwitterChallenge-vitor.4';
			package: #'TwitterChallenge-ExternalAdapter' with: 'TwitterChallenge-ExternalAdapter-vitor.3';
			package: #'TwitterChallenge-ExternalConfig' with: 'TwitterChallenge-ExternalConfig-vitor.8';
			package: #'TwitterChallenge-Tests' with: 'TwitterChallenge-Tests-vitor.4'. ].

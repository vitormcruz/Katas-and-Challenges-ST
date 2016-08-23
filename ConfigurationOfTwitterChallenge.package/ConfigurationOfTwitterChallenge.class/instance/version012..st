versions
version012: spec
	<version: '0.1.2' imports: #('0.3-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'Adjustments on tests and adding chain to the hashesTop: method.'.
		spec author: 'vitor'.
		spec timestamp: '8/21/2016 21:49'.
		spec 
			project: 'LanguageExtension' with: '1.0';
			project: 'NeoJSON' with: '13'.
		spec 
			package: #TwitterChallenge with: 'TwitterChallenge-vitor.3';
			package: #'TwitterChallenge-ExternalAdapter' with: 'TwitterChallenge-ExternalAdapter-vitor.2';
			package: #'TwitterChallenge-ExternalConfig' with: 'TwitterChallenge-ExternalConfig-vitor.5';
			package: #'TwitterChallenge-Tests' with: 'TwitterChallenge-Tests-vitor.3'. ].

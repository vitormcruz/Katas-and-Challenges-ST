versions
version01: spec
	<version: '0.1' imports: #('0.2-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'Package organizing and implementation of first tests.'.
		spec author: 'vitor'.
		spec timestamp: '8/21/2016 17:13'.
		spec project: 'NeoJSON' with: '13'.
		spec 
			package: #TwitterChallenge with: 'TwitterChallenge-vitor.1';
			package: #'TwitterChallenge-ExternalAdapter' with: 'TwitterChallenge-ExternalAdapter-vitor.1';
			package: #'TwitterChallenge-ExternalConfig' with: 'TwitterChallenge-ExternalConfig-vitor.1';
			package: #'TwitterChallenge-Tests' with: 'TwitterChallenge-Tests-vitor.1'. ].

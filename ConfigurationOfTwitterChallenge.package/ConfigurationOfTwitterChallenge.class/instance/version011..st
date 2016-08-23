versions
version011: spec
	<version: '0.1.1' imports: #('0.2-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'Made the first Integration test pass.'.
		spec author: 'vitor'.
		spec timestamp: '8/21/2016 20:30'.
		spec project: 'NeoJSON' with: '13'.
		spec 
			package: #TwitterChallenge with: 'TwitterChallenge-vitor.2';
			package: #'TwitterChallenge-ExternalAdapter' with: 'TwitterChallenge-ExternalAdapter-vitor.2';
			package: #'TwitterChallenge-ExternalConfig' with: 'TwitterChallenge-ExternalConfig-vitor.3';
			package: #'TwitterChallenge-Tests' with: 'TwitterChallenge-Tests-vitor.2'. ].

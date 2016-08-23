baselines
baseline01: spec
	<version: '0.1-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'filetree://E:\Projetos\Katas-and-Challenges-ST'.
		spec package: #'Twitter-Challencher-Tests'.
		spec 
			group: 'default' with: #(#'Twitter-Challencher-Tests' );
			group: 'tests' with: #(#'Twitter-Challencher-Tests' ). ].

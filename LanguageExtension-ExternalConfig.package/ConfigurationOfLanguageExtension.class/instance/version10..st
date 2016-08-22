versions
version10: spec
	<version: '1.0' imports: #('0.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'Chain functionality.'.
		spec author: 'vitor'.
		spec timestamp: '8/21/2016 21:39'.
		spec 
			package: #LanguageExtension with: 'LanguageExtension-vitor.1';
			package: #'LanguageExtension-ExternalConfig' with: 'LanguageExtension-ExternalConfig-vitor.1'. ].

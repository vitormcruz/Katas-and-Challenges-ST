versions
version102: spec
	<version: '1.0.2' imports: #('0.2-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'Ading smalltalk hub repository'.
		spec author: 'vitor'.
		spec timestamp: '8/22/2016 17:07'.
		spec 
			package: #LanguageExtension with: 'LanguageExtension-vitor.1';
			package: #'LanguageExtension-ExternalConfig' with: 'LanguageExtension-ExternalConfig-vitor.5'. ].

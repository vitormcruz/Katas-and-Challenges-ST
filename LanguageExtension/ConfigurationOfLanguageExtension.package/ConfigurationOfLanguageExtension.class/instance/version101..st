versions
version101: spec
	<version: '1.0.1' imports: #('0.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'Addim smalltalk hub repository'.
		spec author: 'vitor'.
		spec timestamp: '8/22/2016 16:58'.
		spec 
			package: #LanguageExtension with: 'LanguageExtension-vitor.1';
			package: #'LanguageExtension-ExternalConfig' with: 'LanguageExtension-ExternalConfig-vitor.3'. ].

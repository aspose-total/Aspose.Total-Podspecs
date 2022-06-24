
Pod::Spec.new do |spec|
  spec.name             = 'CodePorting.Translator.Cs2Cpp.Framework'
  spec.version          = '22.6'
  spec.summary          = 'CodePorting.Translator Cs2Cpp is a porting solution that can help you automate the conversion of C# source code to C++.'
  spec.homepage         = 'https://products.codeporting.com/native'
  spec.author           = { 'Aspose' => 'sales@aspose.com' }
  spec.license          = { :type => 'Aspose End User License Agreement', :file => 'CodePorting.Translator.Cs2Cpp_macos_22.6/licenses/Aspose_End-User-License-Agreement.txt' }

  spec.pod_target_xcconfig = { "HEADER_SEARCH_PATHS": "${PODS_TARGET_SRCROOT}/include" }
  spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=*]' => 'arm64'}
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=*]' => 'arm64'}

  spec.platform = :osx
  spec.osx.deployment_target = "12.0"

  spec.source = { :http => 'https://downloads.codeporting.com/native/cs2cpp/new-releases/codeporting.translator-cs2cpp-22.6-macos-framework/146be8f05ed94f5eb8d2229660123a0b', :type => 'zip' }

  spec.public_header_files = 'CodePorting.Translator.Cs2Cpp_macos_22.6/include/*', 'CodePorting.Translator.Cs2Cpp_macos_22.6/include/**/*'
  spec.source_files = 'CodePorting.Translator.Cs2Cpp_macos_22.6/include/*', 'CodePorting.Translator.Cs2Cpp_macos_22.6/include/**/*'
  spec.header_mappings_dir = 'CodePorting.Translator.Cs2Cpp_macos_22.6/include'

  spec.vendored_library = 'CodePorting.Translator.Cs2Cpp_macos_22.6/lib/libcodeporting.translator.cs2cpp.framework_appleclang.dylib'

  spec.preserve_path = 'CodePorting.Translator.Cs2Cpp_macos_22.6/licenses/3rdParty.pdf'

  spec.xcconfig = { 'LD_RUNPATH_SEARCH_PATHS' => '${PODS_ROOT}/CodePorting.Translator.Cs2Cpp.Framework/CodePorting.Translator.Cs2Cpp_macos_22.6/lib' }
end

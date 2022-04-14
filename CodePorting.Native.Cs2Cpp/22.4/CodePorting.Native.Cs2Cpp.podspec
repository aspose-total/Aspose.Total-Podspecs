
Pod::Spec.new do |spec|
  spec.name             = 'CodePorting.Native.Cs2Cpp'
  spec.version          = '22.4'
  spec.summary          = 'CodePorting.Native Cs2Cpp is a porting solution that can help you automate the conversion of C# source code to C++.'
  spec.homepage         = 'https://products.codeporting.com/native'
  spec.author           = { 'Aspose' => 'sales@aspose.com' }
  spec.license          = { :type => 'Aspose End User License Agreement', :file => 'CodePorting.Native.Cs2Cpp_macos_22.4/licenses/Aspose_End-User-License-Agreement.txt' }

  spec.pod_target_xcconfig = { "HEADER_SEARCH_PATHS": "${PODS_TARGET_SRCROOT}/include" }
  spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=*]' => 'arm64'}
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=*]' => 'arm64'}

  spec.platform = :osx
  spec.osx.deployment_target = "12.0"

  spec.source = { :http => 'https://downloads.codeporting.com/native/cs2cpp/new-releases/codeporting.native-cs2cpp-22.4-macos-api/7dd54348f89f4aa5947561bc8ae6f3d8', :type => 'zip' }

  spec.public_header_files = 'CodePorting.Native.Cs2Cpp_macos_22.4/include/*', 'CodePorting.Native.Cs2Cpp_macos_22.4/include/**/*'
  spec.source_files = 'CodePorting.Native.Cs2Cpp_macos_22.4/include/*', 'CodePorting.Native.Cs2Cpp_macos_22.4/include/**/*'
  spec.header_mappings_dir = 'CodePorting.Native.Cs2Cpp_macos_22.4/include'

  spec.vendored_library = 'CodePorting.Native.Cs2Cpp_macos_22.4/lib/libaspose_cpp_appleclang.dylib'

  spec.preserve_path = 'CodePorting.Native.Cs2Cpp_macos_22.4/licenses/3rdParty.pdf'

  spec.xcconfig = { 'LD_RUNPATH_SEARCH_PATHS' => '${PODS_ROOT}/CodePorting.Native.Cs2Cpp/CodePorting.Native.Cs2Cpp_macos_22.4/lib' }
end

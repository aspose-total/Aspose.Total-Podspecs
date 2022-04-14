
Pod::Spec.new do |spec|
  spec.name             = 'Aspose.Words.Cpp'
  spec.version          = '22.4'
  spec.summary          = 'Aspose.Words for C++ is an advanced Word Document Processing API to perform a wide range of processing tasks'
  spec.homepage         = 'https://products.aspose.com/words/cpp/'
  spec.author           = { 'Aspose' => 'sales@aspose.com' }
  spec.license          = { :type => 'Aspose End User License Agreement', :file => 'build/native/license/End-User-License-Agreement.txt' }

  spec.pod_target_xcconfig = { "HEADER_SEARCH_PATHS": "${PODS_TARGET_SRCROOT}/include" }
  spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=*]' => 'arm64'}
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=*]' => 'arm64'}

  spec.platform = :osx
  spec.osx.deployment_target = "12.0"

  spec.source = { :http => 'https://www.nuget.org/api/v2/package/Aspose.Words.Cpp/22.4.0', :type => 'zip' }

  spec.public_header_files = 'build/native/include/Aspose.Words.Cpp/*', 'build/native/include/Aspose.Words.Cpp/**/*'
  spec.source_files = 'build/native/include/Aspose.Words.Cpp/*', 'build/native/include/Aspose.Words.Cpp/**/*'
  spec.header_mappings_dir = 'build/native/include'

  spec.vendored_library = 'build/native/lib/libAspose.Words.Cpp.dylib'

  spec.preserve_path = 'build/native/license/*'

  spec.osx.xcconfig = { 'LD_RUNPATH_SEARCH_PATHS' => '${PODS_ROOT}/Aspose.Words.Cpp/build/native/lib' }

  spec.dependency 'CodePorting.Native.Cs2Cpp'
end

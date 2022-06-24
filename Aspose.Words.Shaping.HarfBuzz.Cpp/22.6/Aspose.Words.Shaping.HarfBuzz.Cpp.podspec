
Pod::Spec.new do |spec|
  spec.name             = 'Aspose.Words.Shaping.HarfBuzz.Cpp'
  spec.version          = '22.6'
  spec.summary          = 'Aspose.Words.Shaping.HarfBuzz.Cpp provides the support for the OpenType features in the Aspose.Words using HarfBuzz shaping engine'
  spec.homepage         = 'https://products.aspose.com/words/cpp/'
  spec.author           = { 'Aspose' => 'sales@aspose.com' }
  spec.license          = { :type => 'Aspose End User License Agreement', :file => 'build/native/license/End-User-License-Agreement.txt' }

  spec.pod_target_xcconfig = { "HEADER_SEARCH_PATHS": "${PODS_TARGET_SRCROOT}/include" }
  spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=*]' => 'arm64'}
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=*]' => 'arm64'}

  spec.platform = :osx
  spec.osx.deployment_target = "12.0"

  spec.source = { :http => 'https://www.nuget.org/api/v2/package/Aspose.Words.Shaping.HarfBuzz.Cpp/22.6.0', :type => 'zip' }

  spec.public_header_files = 'build/native/include/Aspose.Words.Cpp/*', 'build/native/include/Aspose.Words.Cpp/**/*'
  spec.source_files = 'build/native/include/Aspose.Words.Cpp/*', 'build/native/include/Aspose.Words.Cpp/**/*'
  spec.header_mappings_dir = 'build/native/include'

  spec.vendored_library = 'build/native/lib/libAspose.Words.Shaping.HarfBuzz.Cpp.dylib'

  spec.preserve_path = 'build/native/license/*'

  spec.osx.xcconfig = { 'LD_RUNPATH_SEARCH_PATHS' => '${PODS_ROOT}/Aspose.Words.Shaping.HarfBuzz.Cpp/build/native/lib' }

  spec.dependency 'Aspose.Words.Cpp'
end

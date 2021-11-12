Pod::Spec.new do |spec|
  spec.name                  = 'SudoEntitlementsAdmin'
  spec.version               = '1.1.0'
  spec.author                = { 'Sudo Platform Engineering' => 'sudoplatform-engineering@anonyome.com' }
  spec.homepage              = 'https://sudoplatform.com/'
  spec.summary               = 'Sudo Entitlements Admin SDK for the Sudo Platform by Anonyome Labs.'
  spec.license               = { :type => 'Apache License, Version 2.0',  :file => 'LICENSE' }
  spec.source                = { :git => 'https://github.com/sudoplatform/sudo-entitlements-admin-ios.git', :tag => "v#{spec.version}" }
  spec.source_files          = 'SudoEntitlementsAdmin/*.swift'
  spec.ios.deployment_target = '13.0'
  spec.requires_arc          = true
  spec.swift_version         = '5.0'

  spec.dependency 'SudoLogging', '~> 0.3'
  spec.dependency 'SudoConfigManager', '~> 1.4'
  spec.dependency 'AWSAppSync', '~> 3.2'
  spec.dependency 'AWSCore', '~> 2.24.2'
end

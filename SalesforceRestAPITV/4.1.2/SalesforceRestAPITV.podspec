Pod::Spec.new do |s|

  s.name         = "SalesforceRestAPITV"
  s.version      = "4.1.2"
  s.summary      = "Salesforce Mobile SDK for iOS - SalesforceRestAPI"
  s.homepage     = "https://github.com/douglowder/SalesforceMobileSDK-iOS"

  s.license      = { :type => "Salesforce.com Mobile SDK License", :file => "LICENSE.md" }
  s.author       = { "Kevin Hawkins" => "khawkins@salesforce.com" }

  s.platform     = :tvos, "9.2"

  s.source       = { :git => "https://github.com/douglowder/SalesforceMobileSDK-iOS.git",
                     :branch => "master",
                     :submodules => true }
  
  s.requires_arc = true
  s.default_subspec  = 'SalesforceRestAPI'
  s.header_dir = 'SalesforceRestAPI'


  s.subspec 'SalesforceRestAPI' do |restapi|

      restapi.dependency 'SalesforceNetworkTV'
      restapi.dependency 'SalesforceSDKCoreTV'
      restapi.source_files = 'libs/SalesforceRestAPI/SalesforceRestAPI/Classes/*.{h,m}', 'libs/SalesforceRestAPI/SalesforceRestAPI/SalesforceRestAPI.h'
      restapi.public_header_files = 'libs/SalesforceRestAPI/SalesforceRestAPI/Classes/SFRestAPI+Blocks.h', 'libs/SalesforceRestAPI/SalesforceRestAPI/Classes/SFRestAPI+Files.h', 'libs/SalesforceRestAPI/SalesforceRestAPI/Classes/SFRestAPI+QueryBuilder.h', 'libs/SalesforceRestAPI/SalesforceRestAPI/Classes/SFRestAPI.h', 'libs/SalesforceRestAPI/SalesforceRestAPI/Classes/SFRestAPISalesforceAction.h', 'libs/SalesforceRestAPI/SalesforceRestAPI/Classes/SFRestRequest.h', 'libs/SalesforceRestAPI/SalesforceRestAPI/SalesforceRestAPI.h'
      restapi.prefix_header_contents = '#import <SalesforceSDKCore/SFLogger.h>'
      restapi.requires_arc = true

  end

end

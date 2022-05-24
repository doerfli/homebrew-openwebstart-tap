cask "cpph" do
  version "1.4.2"
  sha256 "6fde55ae6a63a411a51772d4908379292c65dd27d7fd886f714a9e6bb7f7cca5"

  url "https://artifact.adcubum.com/artifactory/adcubum-library-releases/com/adcubum/clientpush/adcubum-clientpush-installer/mac/CPProtocolHandler-1.4.2.pkg"
  name "Clientpush Protocolhandler"
  desc "used to start adcubum SYRIUS (ERP Core/FX Client) from a third party application"

  pkg "CPProtocolHandler-1.4.2.pkg"

  uninstall pkgutil: [
    "com.adcubum.pkg.CPProtocolHandler"
  ]
end

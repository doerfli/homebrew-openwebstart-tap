cask "cpph" do
  version "1.4.3"
  sha256 "2351a0db4d6a5a22a6aa84867055826f14bbbea27dd9f2a6a8db3725a03b1b25"

  url "https://artifact.adcubum.com/artifactory/adcubum-library-releases/com/adcubum/clientpush/adcubum-clientpush-installer/mac/CPProtocolHandler-1.4.3.pkg"
  name "Clientpush Protocolhandler"
  desc "used to start adcubum SYRIUS (ERP Core/FX Client) from a third party application"

  pkg "CPProtocolHandler-1.4.3.pkg"

  uninstall pkgutil: [
    "com.adcubum.pkg.CPProtocolHandler"
  ]
end

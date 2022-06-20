cask "cpph" do
  version "1.5.0"
  sha256 "e1ab2ecf150b16fc3e709d6d813d8b3ea51fe2dd15a8bf60569ab5f5912e5e9e"

  url "https://artifact.adcubum.com/artifactory/adcubum-library-releases/com/adcubum/clientpush/adcubum-clientpush-installer/mac/CPProtocolHandler-1.5.0.pkg"
  name "Clientpush Protocolhandler"
  desc "used to start adcubum SYRIUS (ERP Core/FX Client) from a third party application"

  pkg "CPProtocolHandler-1.5.0.pkg"

  uninstall pkgutil: [
    "com.adcubum.pkg.CPProtocolHandler"
  ]
end

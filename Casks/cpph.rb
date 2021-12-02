cask "cpph" do
  version "1.4.1"
  sha256 "16983860ea576bb0c96b8f2f4a6921436c7c6417171d7f3787be0d2c7bc3d956"

  url "artifact.devres.internal.adcubum.com/artifactory/adcubum-library-releases/com/adcubum/clientpush/adcubum-clientpush-installer/mac/CPProtocolHandler-1.4.1.pkg"
  name "Clientpush Protocolhandler"
  desc "used to start adcubum SYRIUS (ERP Core/FX Client) from a third party application"

  pkg "CPProtocolHandler-1.4.1.pkg"

  uninstall pkgutil: [
    "com.adcubum.pkg.CPProtocolHandler"
  ]
end

cask "cpph" do
  version "1.0.1"
  sha256 "379997ec7fc998f282316c18abd3966369cc4f0c50a47268dd3b98ef99ee76b1"

  url "artifact.devres.internal.adcubum.com/artifactory/adcubum-library-releases/com/adcubum/clientpush/adcubum-clientpush-installer/mac/CPProtocolHandler.pkg"
  name "Clientpush Protocolhandler"
  desc "used to start adcubum SYRIUS (ERP Core/FX Client) from a third party application"

  pkg "CPProtocolHandler.pkg"

  uninstall pkgutil: [
    "com.adcubum.pkg.CPProtocolHandler"
  ]
end

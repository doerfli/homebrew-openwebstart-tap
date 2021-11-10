cask "cpph" do
  version "1.4.0"
  sha256 "983b04135c1b7ed187124328a9109a1c04e3bb759f35bf0263a9a6908dc2b2cb"

  url "artifact.devres.internal.adcubum.com/artifactory/adcubum-library-releases/com/adcubum/clientpush/adcubum-clientpush-installer/mac/CPProtocolHandler-1.4.0.pkg"
  name "Clientpush Protocolhandler"
  desc "used to start adcubum SYRIUS (ERP Core/FX Client) from a third party application"

  pkg "CPProtocolHandler-1.4.0.pkg"

  uninstall pkgutil: [
    "com.adcubum.pkg.CPProtocolHandler"
  ]
end

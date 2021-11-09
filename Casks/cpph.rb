cask "cpph" do
  version "1.0.2"
  sha256 "a8a0a871a04c328d3c6a84a436bd4f2a29d34a8e1f62ad928774664d6987b104"

  url "artifact.devres.internal.adcubum.com/artifactory/adcubum-library-releases/com/adcubum/clientpush/adcubum-clientpush-installer/mac/CPProtocolHandler.pkg"
  name "Clientpush Protocolhandler"
  desc "used to start adcubum SYRIUS (ERP Core/FX Client) from a third party application"

  pkg "CPProtocolHandler.pkg"

  uninstall pkgutil: [
    "com.adcubum.pkg.CPProtocolHandler"
  ]
end

cask "cpph" do
  version "1.0.0"
  sha256 "ea4cff76664b17b0bba7737b0217ddf21b672d5acd0d53bd290ba73afa512a97"

  url "artifact.devres.internal.adcubum.com/artifactory/adcubum-library-releases/com/adcubum/clientpush/adcubum-clientpush-installer/mac/CPProtocolHandler.pkg"
  appcast "https://www.avatron.com/updates/software/airdisplay/appcast.xml"
  name "Clientpush Protocolhandler"
  desc "used to start adcubum SYRIUS (ERP Core/FX Client) from a third party application"

  pkg "CPProtocolHandler.pkg"

  uninstall pkgutil: [
    "com.adcubum.pkg.CPProtocolHandler"
  ]
end

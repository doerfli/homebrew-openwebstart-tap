cask "cpph" do
  version "1.4.3"
  sha256 "22c0def063afd0ee3aa6566fb1957f3609aae3971ad8d4c5d3cbfefeba2fa86e"

  url "https://artifact.adcubum.com/artifactory/adcubum-library-releases/com/adcubum/clientpush/adcubum-clientpush-installer/mac/CPProtocolHandler-1.4.3.pkg"
  name "Clientpush Protocolhandler"
  desc "used to start adcubum SYRIUS (ERP Core/FX Client) from a third party application"

  pkg "CPProtocolHandler-1.4.3.pkg"

  uninstall pkgutil: [
    "com.adcubum.pkg.CPProtocolHandler"
  ]
end

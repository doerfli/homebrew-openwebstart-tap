cask "openwebstart3-adcubum-config" do
    depends_on cask: "openwebstart3"
    version "1.0.1"
    sha256 "b8852525ae66052f79ec553e1e912b5a9eeb1acedae6f110a9eb27d04e8dd733"
    url "https://files.internal.adcubum.com/openwebstart/openwebstart3-config_1.0.1.zip"
    name "OpenWebStart3 Adcubum config"
    desc "Adcubum configuration for openwebstart"
    
    installer script: {
      executable:   "#{staged_path}/setup_openwebstart3_config.sh",
    #   args:         ["-q"],
    #   sudo:         true,
    #   print_stderr: false,
    }

    zap trash: [
       "~/.config/icedtea-web/security/trusted.certs",
       "~/.cache/icedtea-web/jvm-cache/cache.json",
    ]
  end
  
cask "openwebstart3-adcubum-config" do
    depends_on cask: "openwebstart3"
    version "1.0.0"
    sha256 "c1c11c0c9d53931207ad40b623560188fe3ccc410a1035ea15b51d1579cf5049"
    url "https://git.adcubum.com/rest/api/latest/projects/~MDOERFLINGER/repos/openwebstart3/archive?format=zip"
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
  
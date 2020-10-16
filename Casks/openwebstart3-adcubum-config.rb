cask "openwebstart3-adcubum-config" do
    version "1.0.0"
    sha256 "d430002bc30f96ebf693bea70c572b9ae119e27d587cb81d66ff8bc9bb3aeca1"
  
    # github.com/karakun/OpenWebStart/ was verified as official when first introduced to the cask
    url "https://git.adcubum.com/rest/api/latest/projects/~MDOERFLINGER/repos/openwebstart3/archive?format=zip"
    name "OpenWebStart3 Adcubum config"
    desc "Adcubum configuration for openwebstart"
    
    # installer script: {
    #   executable:   "#{staged_path}/OpenWebStart Installer.app/Contents/MacOS/JavaApplicationStub",
    #   args:         ["-q"],
    #   sudo:         true,
    #   print_stderr: false,
    # }
    postflight do
        system_command "/bin/mkdir", args: ["-p", "#{ENV["HOME"]}/.cache/icedtea-web/jvm-cache/"]
        system_command "/bin/cp", args: ["#{staged_path}/cache.json", "#{ENV["HOME"]}/.cache/icedtea-web/jvm-cache/"]
        system_command "/bin/mkdir", args: ["-p", "#{ENV["HOME"]}/.config/icedtea-web/"]
        system_command "/bin/cp", args: ["#{staged_path}/deployment.properties", "#{ENV["HOME"]}/.config/icedtea-web/"]
        system_command "/bin/mkdir", args: ["-p", "#{ENV["HOME"]}/.config/icedtea-web/security/"]
        system_command "/bin/cp", args: ["#{staged_path}/trusted.certs", "#{ENV["HOME"]}/.config/icedtea-web/security/trusted.certs/"]
    end
    # artifact "cache.json", target: "#{ENV["HOME"]}/.cache/icedtea-web/jvm-cache/cache.json"
    # artifact "deployment.properties", target: "#{ENV["HOME"]}/.config/icedtea-web/deployment.properties"
    # artifact "trusted.certs", target: "#{ENV["HOME"]}/.config/icedtea-web/security/trusted.certs/trusted.certs"

  
    # uninstall_preflight do
    #   set_ownership "/Applications/OpenWebStart"
    # end
  
    # uninstall script: {
    #   executable: "/Applications/OpenWebStart/OpenWebStart Uninstaller.app/Contents/MacOS/JavaApplicationStub",
    #   args:       ["-c"],
    #   sudo:       true,
    # }
  
    # zap trash: [
    #   "~/.config/icedtea-web",
    #   "~/.cache/icedtea-web",
    #   "/Applications/OpenWebStart",
    # ]
  end
  
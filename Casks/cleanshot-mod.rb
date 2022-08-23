cask "cleanshot-mod" do
    version "3.1.1"
    sha256 "5e2e18b400295179a57acdabed03ed7902eeb335f12f58bffc54cb576297a451"
  
    url "https://github.com/Zenfection/macos/releases/download/1.0/CleanShot.X_#{version}.zip"
    name "CleanShot"
    desc "Screen capturing tool"
    homepage "https://github.com/zenfection/macos"

  
    auto_updates true
    depends_on macos: ">= :sierra"
  
    installer script: {
        executable:   "install.sh",
        args:         ["--mode=silent"],
        sudo:         true,
        print_stderr: false,
    }
    
    uninstall quit: "pl.maketheweb.cleanshotx"
  
    zap trash: [
      "~/Library/Application Support/CleanShot",
      "~/Library/Caches/pl.maketheweb.cleanshotx",
      "~/Library/Caches/SentryCrash/CleanShot X",
      "~/Library/Preferences/com.getcleanshot.app.plist",
      "~/Library/Preferences/pl.maketheweb.cleanshotx.plist",
    ]
  end
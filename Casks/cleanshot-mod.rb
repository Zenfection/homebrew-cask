cask "cleanshot-mod" do
    version "3.1.1"
    sha256 "61609bf8ae39693babf90a19f02b2e5e4a0fb300ab4ddb66a617dc0eecf34f6c"
  
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
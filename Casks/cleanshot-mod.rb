cask "cleanshot-mod" do
    version "3.1.1"
    sha256 "5d78db4e92cdd99baee784b9578df575279ad6920cc6e45b940c22dac8032b2f"
  
    url "https://github.com/Zenfection/macos/releases/download/1.0/CleanShot.X_#{version}.zip"
    name "CleanShot"
    desc "Screen capturing tool"
    homepage "https://github.com/zenfection/macos"
  
  
    auto_updates true
    depends_on macos: ">= :sierra"
  
    app "CleanShot X.app"
  
    installer script: {
        executable:   "install.sh",
        args:         ["--mode=silent"],
        sudo:         true,
        print_stderr: false,
    }

    artifact 'pl.maketheweb.cleanshotx.plist', target: "~/Library/Preferences/pl.maketheweb.cleanshotx.plist"
    
    uninstall quit: "pl.maketheweb.cleanshotx"
  
    zap trash: [
      "~/Library/Application Support/CleanShot",
      "~/Library/Caches/pl.maketheweb.cleanshotx",
      "~/Library/Caches/SentryCrash/CleanShot X",
      "~/Library/Preferences/com.getcleanshot.app.plist",
      "~/Library/Preferences/pl.maketheweb.cleanshotx.plist",
    ]
  end
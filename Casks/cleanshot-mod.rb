cask "cleanshot-mod" do
    version "4.5.1"
    sha256 "87867f055c973b6c2ff1aeae96c336bf86077d72936c9535d61ec4c79a40d86b"
  
    url "https://github.com/Zenfection/macos/releases/download/1.0/CleanShot.X_#{version}.dmg"
    name "CleanShot"
    desc "Screen capturing tool"
    homepage "https://github.com/zenfection/macos"

  
    auto_updates true
    depends_on macos: ">= :sierra"
  
    app "CleanShot X.app"
    # installer script: {
    #     executable:   "install.sh",
    #     args:         ["--mode=silent"],
    #     sudo:         true,
    #     print_stderr: false,
    # }
    
    uninstall quit: "pl.maketheweb.cleanshotx"
  
    zap trash: [
      "~/Library/Application Support/CleanShot",
      "~/Library/Caches/pl.maketheweb.cleanshotx",
      "~/Library/Caches/SentryCrash/CleanShot X",
      "~/Library/Preferences/com.getcleanshot.app.plist",
      "~/Library/Preferences/pl.maketheweb.cleanshotx.plist",
    ]
  end
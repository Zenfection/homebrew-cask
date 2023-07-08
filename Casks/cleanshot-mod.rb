cask "cleanshot-mod" do
    version "4.5.1"
    sha256 "716339ab54e7893e9d9b58d4f99ff1746ad1b37b873e62ba1dde981b7a69ad92"
  
    url "https://dl.dropboxusercontent.com/scl/fi/vtuphw54t8b7cq1ak8yo6/CleanShot-X-v4.5.1.dmg?rlkey=ldalgkecxjzr9v13jw3hffo4q&dl=0"
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
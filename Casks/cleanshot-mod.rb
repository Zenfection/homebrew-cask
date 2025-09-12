cask "cleanshot-mod" do
    version "4.8.3"
    sha256 "2b94ffdafa7268f1b79dd3384b6e24e7c7ad3d3f3008f167aec94bd8921cacc1"

    url "https://github.com/Zenfection/macos/releases/download/1.0/CleanShot_#{version}.dmg"
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
cask "cleanshot-mod" do
    version "4.7.3"
    sha256 "8d02ed0a8c8a80b2f91e2075a80f3f4c9af1d2c2d35cc37cc7f2c2ac5fff4787"

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
cask "cleanshot-mod" do
    version "4.7.4"
    sha256 "ec6cb928beef3ca80382a2a67f8d80083c27f134b7ea13f3ff60d9e48bc2207b"

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
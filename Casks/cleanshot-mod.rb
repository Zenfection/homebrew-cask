cask "cleanshot-mod" do
    version "4.5.1"
    sha256 "20f880abcaff39733af9adfeb2c5f682a17b7db1e94f98f883c9746a6526a47b"

    url "https://dl.dropboxusercontent.com/s/gm9xc6s3w9m89v9/CleanShot%20X%204.5.1%20rev4.dmg?dl=0"
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
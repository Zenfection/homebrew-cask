cask "cleanshot-mod" do
    version "4.6"
    sha256 "0bd16d83ab0674c2a06ddfed2e582dd05b927bae4ee27132941dff6c31c31248"

    url "https://dl.dropboxusercontent.com/scl/fi/vtwe9ydlgpol5d03hqbly/CleanShot-X-v4.6.dmg?rlkey=z5i09yprmuxw2ghvk37nqg39t&dl=0"
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
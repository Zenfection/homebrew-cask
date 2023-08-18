cask "smooze-pro-mod" do
    version "2.0.60"
    sha256 "3b986b74db2eca7ce3613c2676989e8da93d5697ef734f4502707d5da265f8cf"

    url "https://dl.dropboxusercontent.com/scl/fi/om1hyji5vfjktowhrwhck/Smooze_Pro_2.0.60.dmg?rlkey=6cs2zsalm3bfte2m5p039v9ma&dl=0"
    name "Smooze Pro"
    desc "Rediscover your scroll wheel mouse"
    homepage "https://smooze.co/"

    auto_updates true
    depends_on macos: ">= :sierra"

    app "Smooze Pro.app"

    uninstall quit: "co.smooze.macos"

    zap trash: [
        "~/Library/Application Support/co.smooze.macos",
        "~/Library/Application Support/Smooze",
        "~/Library/Caches/co.smooze.macos",
        "~/Library/Caches/io.fabric.sdk.mac.data/co.smooze.macos",
        "~/Library/Preferences/co.smooze.macos.plist",
    ]
end
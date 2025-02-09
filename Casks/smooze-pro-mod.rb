cask "smooze-pro-mod" do
    version "2.1.40"
    sha256 "22ff6a7fa292377b19c19b0476e1c580a73e648e1960f4eeb246189b073fb0ad"

    url "https://github.com/Zenfection/macos/releases/download/1.0/Smooze.Pro_#{version}.dmg"
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
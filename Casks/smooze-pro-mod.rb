cask "smooze-pro-mod" do
    version "2.1.16"
    sha256 "afa16fbe28f47c3120f6915c2966c961b2d2d4ed43fc60ff6cbe4d9bfec286c2"

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
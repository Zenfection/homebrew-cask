cask "smooze-pro-mod" do
    version "2.0.50"
    sha256 "b0549c43ee3e29d0ec96180931fd084a3854dfd705d70623278e08291b11f2bc"

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
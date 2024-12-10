cask "smooze-pro-mod" do
    version "2.1.20"
    sha256 "bbc78f381cebada125ebe7c5fea77a51a0525486ce1529c4adbd1d6d923d3059"

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
cask "macdroid-mod" do
    version "1.6.1"
    sha256 "fabe2c282d3088ee33ada40f9817b4b79c0f390d4f1f280ee73c36845ed5e32f"

    url "https://github.com/Zenfection/macos/releases/download/1.0/MacDroid_#{version}.dmg"
    name "MacDroid"
    desc "Connect to your Android devices"
    homepage "https://www.macdroid.app/"

    livecheck do
        url "https://cdn.electronic.us/products/macdroid/mac/update/settings.xml"
        strategy :sparkle
    end

    auto_updates true
    app "MacDroid.app"

    zap trash: [
        "~/Library/Application Scripts/us.electronic.macdroid.AFTFinderSync",
        "~/Library/Application Support/MacDroid",
        "~/Library/Application Support/us.electronic.macdroid",
        "~/Library/Caches/us.electronic.macdroid",
        "~/Library/Containers/us.electronic.macdroid.AFTFinderSync",
        "~/Library/Group Containers/XS85JU6YZ3.us.electronic.macdroid",
        "~/Library/HTTPStorages/us.electronic.macdroid.binarycookies",
        "~/Library/Logs/MacDroid.log",
        "~/Library/Preferences/us.electronic.macdroid.plist",
    ]
end
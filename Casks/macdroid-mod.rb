cask "macdroid-mod" do
    version "1.8"
    sha256 "bc277041d184a1455f0b17fd3d45d9a0ef4fb82502bff35b61dd8d3eb494453d"
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
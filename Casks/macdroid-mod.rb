cask "macdroid-mod" do
  version "2.4"
  sha256 "060731450c4109bb185aba401b106df656b7df2d3665327780f8ed1128b0abd8"

  url "https://github.com/Zenfection/macos/releases/download/1.0/MacDroid_#{version}.dmg",
  name "MacDroid"
  desc "Connect to your Android devices"
  homepage "https://www.macdroid.app/"

  auto_updates true
  depends_on macos: ">= :catalina"

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
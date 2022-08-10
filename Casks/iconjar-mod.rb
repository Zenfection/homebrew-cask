cask "iconjar-mod" do
  version "2.11.0"
  sha256 "f8dc1216e432c949c3c5d54ed0ed9b49f3f847641ab60011a1d2472302891bae"
  url "https://github.com/Zenfection/macos/releases/download/1.0/IconJar_#{version}.dmg"
  name "IconJar"
  desc "Icon organizer"
  homepage "https://github.com/zenfection/macos"

  livecheck do
    url "https://geticonjar.com/releases/stable.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "IconJar.app"

  zap trash: [
    "/Users/Shared/IconJar",
    "~/Library/Application Support/IconJar",
    "~/Library/Preferences/com.iconjar.iconjar.plist",
  ]
end

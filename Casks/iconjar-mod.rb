cask "iconjar-mod" do
  version "2.10.0"
  sha256 "3fafc76ae33e5c6202af73c5a1c656e2a5dfaff38803ec93bdff103cd9f0aba3"
  url "https://github.com/Zenfection/macos/releases/download/1.0/IconJar_#{version}.dmg"
  name "IconJar"
  desc "Icon organizer"
  homepage "https://github.com/zenfection/macos"

  livecheck do
    url "https://geticonjar.com/releases/stable.xml"
    strategy :sparkle
  end

  auto_updates false
  depends_on macos: ">= :mojave"

  app "IconJar.app"

  zap trash: [
    "/Users/Shared/IconJar",
    "~/Library/Application Support/IconJar",
    "~/Library/Preferences/com.iconjar.iconjar.plist",
  ]
end

cask "iconjar-mod" do
  version "2.11.2"
  sha256 "4b1719e78c4a4201417e57859ec5200d48eb7af6eece304447ad59b9ce5bcd11"
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

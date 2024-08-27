cask "iconjar-mod" do
  version "2.11.3"
  sha256 "f49b8d0349ab5dde4c926e2e9cd1f0c686b04dda8d68b1bb3abe43f11842f824"
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

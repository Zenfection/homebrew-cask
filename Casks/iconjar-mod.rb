cask "iconjar-mod" do
  version "2.11.1"
  sha256 "8ea746ad6da1687312eea492be296c33d69da68b33c7414d035ffe82cd6e34d9"
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

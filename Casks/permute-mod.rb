cask "permute-mod" do
  version "3.13.6"
  sha256 "3fd310fdca7596e869cc9dc87cffa50362e05282ae2c26d7461505178dd2bf48"

  url "https://github.com/Zenfection/macos/releases/download/1.0/Permute_#{version}.dmg"
  name "Permute"
  desc "Converts and edits video, audio or image files"
  homepage "https://github.com/zenfection/macos"

  livecheck do
    url "https://software.charliemonroe.net/trial/permute/v#{version.major}/updates.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Permute #{version.major}.app"

  zap trash: [
    "~/Library/Containers/com.charliemonroe.Permute-#{version.major}",
    "~/Library/Preferences/com.charliemonroe.Permute-#{version.major}.plist",
  ]
end

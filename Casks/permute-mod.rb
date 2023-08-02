cask "permute-mod" do
  version "3.10.7"
  sha256 "cf26bfe2b2001479c64463c8254d7f69146cb6e95008debe1b0e07627aae0f28"

  url "https://dl.dropboxusercontent.com/s/ja3ql8s3nft4rg9/Permute_3.10.7.dmg?dl=0"
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

cask "downie-mod" do
  version "4.6.25"
  sha256 "2b27ed2ad05aaa72e7472d45f06202a8e42e0f49c4399581f397847bad189600"

  url "https://www.dropbox.com/scl/fi/k9buu63t3wytxgw5mqj1r/Downie-4-4.6.25.dmg?rlkey=0mepda78s7fzbhdl69u8p3u6n&dl=0"
  name "Downie"
  desc "Downloads videos from different websites"
  homepage "https://github.com/zenfection/macos"

  livecheck do
    url "https://software.charliemonroe.net/trial/downie/v#{version.major}/updates.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Downie #{version.major}.app"

  zap trash: [
    "~/Library/Caches/com.charliemonroe.Downie-#{version.major}",
    "~/Library/Containers/com.charliemonroe.Downie-#{version.major}",
    "~/Library/Containers/com.charliemonroe.Downie-#{version.major}-Downie-Extension",
    "~/Library/Preferences/com.charliemonroe.Downie-#{version.major}.plist",
  ]
end

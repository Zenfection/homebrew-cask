cask "downie-mod" do
  version "4.6.26"
  sha256 "0f2bc71a0f47149643da41bb7bcb9550ae694a1796298b10fdf251b1b35fb3cc"

  url "https://dl.dropboxusercontent.com/scl/fi/2f3711vngbl6gyr8228ot/Downie-4-4.6.26.dmg?rlkey=2pox7i7fz06e1ci7eycsg7jo3&dl=0"
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

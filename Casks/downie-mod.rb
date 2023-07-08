cask "downie-mod" do
  version "4.6.20"
  sha256 "d19932f061e5778c2642b7bc90014adaace35842c19f0843bf29f86c0ab368c6"

  url "https://dl.dropboxusercontent.com/scl/fi/bjnmcy0r4gnoty330sw0z/Downie_4.6.20.dmg?rlkey=i1lrzpwb3kxk7nezi52qflww4&dl=0"
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

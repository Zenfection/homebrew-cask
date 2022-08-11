cask "sitesucker-mod" do
  version "5.3"
  sha256 "27213a08470db0a50ce5c35f03255347b04f45c05ebd9443ced0774ee91ca347"
  url "https://github.com/Zenfection/macos/releases/download/1.0/SiteSucker_#{version}.dmg"

  name "SiteSucker Pro"
  desc "Website downloader tool"
  homepage "https://github.com/zenfection/macos"

  livecheck do
    url "https://ricks-apps.com/osx/sitesucker/history.html"
    regex(/Version\s*(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "SiteSucker.app"

  zap trash: [
    "~/Library/Application Scripts/us.sitesucker.mac.sitesucker-pro",
    "~/Library/Containers/us.sitesucker.mac.sitesucker-pro",
  ]
end

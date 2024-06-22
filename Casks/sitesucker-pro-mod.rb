cask "sitesucker-pro-mod" do
  version "5.4"
  sha256 "dba336667e976143d22a7c6a7668682c5fcaf75ef61ba346394b953c06a79a6f"
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

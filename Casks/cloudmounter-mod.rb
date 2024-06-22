cask "cloudmounter-mod" do
  version "4.6"
  sha256 "1112cd6c6ba92b71985cdcb636e08ed411a7e58088c7fff2cab60c0f1518cf95"

  url "https://github.com/Zenfection/macos/releases/download/1.0/CloudMounter_#{version}.dmg"
  name "Eltima CloudMounter"
  desc "Mounts cloud storages as local disks"
  homepage "https://mac.eltima.com/mount-cloud-drive.html"

  livecheck do
    url "https://cdn.electronic.us/products/cloudmounter/mac/update/settings.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :sierra"

  app "CloudMounter.app"

  zap trash: [
    "~/Library/Application Support/com.eltima.cloudmounter",
    "~/Library/Caches/com.eltima.cloudmounter",
    "~/Library/Logs/CloudMounter.log",
    "~/Library/Preferences/com.eltima.cloudmounter.plist",
  ]
end
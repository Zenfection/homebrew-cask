cask "cloudmounter-mod" do
  version "4.3"
  sha256 "3e2fb98e40818ec7408ccbdda2e29795beb61cde3d6d9f9f179c92255fc7db25"

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
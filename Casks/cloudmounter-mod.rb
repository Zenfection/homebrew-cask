cask "cloudmounter-mod" do
  version "4.2"
  sha256 "e24d917511439a88bac0b03fa5a85040d27fbac1eb4612b32b3c568d7faf0b9f"

  url "https://dl.dropboxusercontent.com/s/aoamq1idh31g0ip/CloudMounter_4.2.dmg?dl=0"
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
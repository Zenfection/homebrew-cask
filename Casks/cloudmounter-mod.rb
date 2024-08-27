cask "cloudmounter-mod" do
  version "4.7"
  sha256 "cc0183c5ae68d69c4b83c29a169c7d191410a38b7eaa1c62a9c2ad3603547eb2"

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
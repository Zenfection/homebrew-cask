cask "cloudmounter-mod" do
  version "4.00"
  sha256 "fef7df0806dae5abfa6cc7cde51fda2463659b8fbd0646aac8c37a912a1fbd48"

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
cask "cloudmounter-mod" do
  version "4.1.1"
  sha256 "945a123f219eb7ccb8ed781928e3411bc25eeb6a7639f3441b103aa51c6771cb"

  url "https://dl.dropboxusercontent.com/scl/fi/jq9ff05w52x63owv7uhw4/CloudMounter_4.1.1.dmg?rlkey=ubr0i8simyxfmqs5yiju9pvqn&dl=0"
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
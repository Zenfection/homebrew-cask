cask "maccleaner-pro-mod" do
  version "3.2.1"
  sha256 "87ccbbe3eb68f6f54bed64857070dc23460656b3bb9f4b58d6aac6df43282fdc"

  url "https://dl.dropboxusercontent.com/s/edze3qcfofz81fh/MacCleaner%203%20Pro%203.2.1.180823.dmg?dl=0"
  name "Nektony MacCleaner Pro"
  desc "Delete junk, unnecessary files and folders, and speed up your computer"
  homepage "https://nektony.com/mac-cleaner-pro"

  depends_on macos: ">= :el_capitan"

  app "MacCleaner 3 Pro"

  zap trash: [
    "~/Library/Application Scripts/com.nektony.MacCleaner-PRO-SII",
    "~/Library/Application Support/com.nektony.MacCleaner-PRO-SII",
    "~/Library/Caches/com.nektony.MacCleaner-PRO-SII",
    "~/Library/Cookies/com.nektony.MacCleaner-PRO-SII.binarycookies",
    "~/Library/Preferences/com.nektony.MacCleaner-PRO-SII.plist",
  ]
end
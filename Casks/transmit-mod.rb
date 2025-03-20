cask "transmit-mod" do
  version "5.10.8"
  sha256 "848df9ba0c4d11064068eaa8991796f318879d4aa0c2a536733af9c967d1a1ad"

  url "https://github.com/Zenfection/macos/releases/download/1.0/Transmit_#{version}.dmg"
  name "Transmit"
  desc "File transfer application"
  homepage "https://github.com/zenfection/macos"

  livecheck do
    url "https://library.panic.com/transmit/transmit5/release-integrity/"
    regex(/href=.*?Transmit[\s._-]?v?(\d+(?:\.\d+)+)\.zip/i)
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Transmit.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.panic.transmit.sfl2",
    "~/Library/Application Support/com.panic.Transmit",
    "~/Library/Application Support/Transmit",
    "~/Library/Caches/com.panic.Transmit",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.panic.Transmit",
    "~/Library/Caches/Transmit",
    "~/Library/Preferences/com.panic.Transmit.plist",
    "~/Library/Saved Application State/com.panic.Transmit.savedState",
    "~/Library/WebKit/com.panic.Transmit",
  ]
end

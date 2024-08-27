cask "movist-pro-mod" do
    version "2.11.4"
    sha256 "ef39e4269eb6eccf54f98eb560c6f1b896f1f7c3b50612a0ac19fe59b82478de"

    url "https://github.com/Zenfection/macos/releases/download/1.0/Movist.Pro_#{version}.dmg"
    name "Movist Pro"
    desc "Media player"
    homepage "https://github.com/zenfection/macos"

    livecheck do
      url "https://s3.ap-northeast-2.amazonaws.com/update.cocoable.com/appcast.xml"
      strategy :sparkle
    end

    app "Movist Pro.app"

    zap trash: [
      "~/Library/Application Scripts/com.movist.MovistPro.MovistSafariExtension",
      "~/Library/Application Support/Movist Pro",
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.movist.movistpro.sfl2",
      "~/Library/Caches/com.movist.MovistPro",
      "~/Library/Containers/com.movist.MovistPro.MovistSafariExtension",
      "~/Library/HTTPStorages/com.movist.MovistPro",
      "~/Library/HTTPStorages/com.movist.MovistPro.binarycookies",
      "~/Library/Preferences/com.movist.MovistPro.plist",
      "~/Library/Saved Application State/com.movist.MovistPro.savedState",
      "~/Library/WebKit/com.movist.MovistPro",
    ]
  end
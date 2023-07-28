cask "wondershare-uniconverter-mod" do
    version "15.0.0.425"
    sha256 "b42939a56bb7967cba8aebf9dc091ecc36901be15d07213e24df093ec92c7316"

    url "https://dl.dropboxusercontent.com/scl/fi/vvo0hqvmz4du3n6sjohgs/Wondershare_UniConverter_15_15.0.0.425_i.dmg?rlkey=gkps1hw1w6afd52o5efg1lu08&dl=0"
    name "UniConverter"
    desc "Video editing software"
    homepage "https://github.com/zenfection/macos"

    app "Wondershare UniConverter #{version.major}.app"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.wondershare.video-converter-ultimate.sfl*",
      "~/Library/Caches/com.Wondershare.Video-Converter-Ultimate",
      "~/Library/Caches/com.wondershare.helper_compact",
      "~/Library/Cookies/com.Wondershare.Video-Converter-Ultimate.binarycookies",
      "~/Library/Preferences/com.Wondershare.Video-Converter-Ultimate.plist",
      "~/Library/Preferences/com.wondershare.helper_compact",
    ]
  end``
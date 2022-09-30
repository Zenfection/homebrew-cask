cask "wondershare-uniconverter-mod" do
    version "12.5.4.17"
    sha256 "6b769bfead42b8c306f5bf5f91065de6ed37927cea69fb034dbd5d2abf82fbd8"
  
    url "https://github.com/Zenfection/macos/releases/download/1.0/Wondershare.UniConverter_#{version}.dmg"
    name "UniConverter"
    desc "Video editing software"
    homepage "https://github.com/zenfection/macos"
  
    app "Wondershare UniConverter.app"
  
    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.wondershare.video-converter-ultimate.sfl*",
      "~/Library/Caches/com.Wondershare.Video-Converter-Ultimate",
      "~/Library/Caches/com.wondershare.helper_compact",
      "~/Library/Cookies/com.Wondershare.Video-Converter-Ultimate.binarycookies",
      "~/Library/Preferences/com.Wondershare.Video-Converter-Ultimate.plist",
      "~/Library/Preferences/com.wondershare.helper_compact",
    ]
  end
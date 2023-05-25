cask "wondershare-uniconverter-mod" do
    version "14.2.16.289"
    sha256 "9de6160945341aff73c302136f7c522e0448c89ced858d852aab3f947000b769"
  
    url "https://github.com/Zenfection/macos/releases/download/1.0/Wondershare.UniConverter_#{version}.dmg"
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
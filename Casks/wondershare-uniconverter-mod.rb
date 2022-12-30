cask "wondershare-uniconverter-mod" do
    version "14.2.4.20"
    sha256 "8186ac8e91f2f29764dad557bc20bf07ae1312bf88f4da59659672338391c6b5"
  
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
  end
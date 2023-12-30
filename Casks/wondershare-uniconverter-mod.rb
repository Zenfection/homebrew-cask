cask "wondershare-uniconverter-mod" do
    version "15.0.5.588"
    sha256 "79738069445cdc9d9823e955bb2a8dd90015d5fe09c2a7d0c511f94d1fbf87d0"

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
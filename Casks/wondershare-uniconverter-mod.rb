cask "wondershare-uniconverter-mod" do
    version "15.5.10.178"
    sha256 "4d1e40288ef970257a46a09950a53bcc006bcb8a34a149b750555a1424cc2bdc"

    url "https://github.com/Zenfection/macos/releases/download/1.0/UniConverter_#{version}.dmg"
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
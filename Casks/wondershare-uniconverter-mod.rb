cask "wondershare-uniconverter-mod" do
    version "14.2.17.370"
    sha256 "c8ca4a41c46ce5f785a3c36c39fdffd44a99af32101e59a65454fc3039803f4d"
  
    url "https://dl.dropboxusercontent.com/scl/fi/8rb96pvdjrssucx3e3ysu/Wondershare.UniConverter_14.2.17.370.dmg?rlkey=7qfp7kpf1lgrlnp2rdk6bapbs&dl=0"
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
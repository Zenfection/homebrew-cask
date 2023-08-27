cask "wondershare-uniconverter-mod" do
    version "15.0.2.471"
    sha256 "11fed484aae06bc240a4da7b3479828baba77e9d48e903868f4a80f3a9f06b2e"

    url "https://www.dropbox.com/scl/fi/qd8s0pa793kewwy3bpe99/Wondershare-UniConverter-15-15.0.2.471.dmg?rlkey=5ng22b0xefthlqjgen64e3sbk&dl=0"
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
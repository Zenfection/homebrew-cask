cask "soundsource-mod" do
    version "5.5.9"
    sha256 "5606a800e43aaa866c80a1edb1d60cdf595b5f969327a5fbebcccd28f55edabe"

    url "https://github.com/Zenfection/macos/releases/download/1.0/SoundSource_#{version}.dmg"
    name "SoundSource"
    desc "Sound and audio controller"
    homepage "https://github.com/zenfection/macos"
  
    livecheck do
      url "https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&system=1231&bundleid=com.rogueamoeba.soundsource&platform=osx&version=#{version.no_dots}8000"
      strategy :sparkle
    end
  
    auto_updates true
    depends_on macos: ">= :high_sierra"
  
    app "SoundSource.app"
  
    zap trash: [
      "~/Library/Application Support/SoundSource",
      "~/Library/Caches/com.rogueamoeba.soundsource",
      "~/Library/Preferences/com.rogueamoeba.soundsource.plist",
      "~/Library/WebKit/com.rogueamoeba.soundsource",
    ]
  end
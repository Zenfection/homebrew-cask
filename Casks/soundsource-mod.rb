cask "soundsource-mod" do
    version "5.5.8"
    sha256 "ab74809593909d4c7811865b736a4343f1637a92a47a0a237a39a595e22e565c"

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
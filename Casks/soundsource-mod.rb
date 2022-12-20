cask "soundsource-mod" do
    version "5.5.7"
    sha256 "fc49b48bb6a569cb25c8df60cc3b70f8fad67f2f4ad2af227883d68453fb1c95"

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
cask "soundsource-mod" do
    version "5.5.4"
    sha256 "53fea76ca8f54626f5051e9880b86039b9249b244feb7e34855b88018578f9e7"

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
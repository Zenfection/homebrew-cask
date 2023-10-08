cask "soundsource-mod" do
    version "5.6.2"
    sha256 "dc314f243fd4f7155e2e5d06b907199de58a9af3607a282f42ca8a45777bc7dc"

    url "https://dl.dropboxusercontent.com/s/t043gw3vs9om34o/SoundSource%205.6.2.dmg?dl=0"
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
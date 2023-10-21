cask "soundsource-mod" do
    version "5.6.3"
    sha256 "521f520a24bafe018f0ecb9c03d60285b461b2b029a737ddd7ab65d1fe4a4a51"

    url "https://dl.dropboxusercontent.com/s/9lj31svenyp8gev/SoundSource_5.6.3.dmg?dl=0"
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
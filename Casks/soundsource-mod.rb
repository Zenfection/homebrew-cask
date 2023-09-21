cask "soundsource-mod" do
    version "5.6.1"
    sha256 "7beaa1a99b1d2cc855be5f71526033f36f0843aacaa60792ed43960066b87201"

    url "https://dl.dropboxusercontent.com/s/wete4vqvndhnier/SoundSource%20v5.6.1g.dmg?dl=0"
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
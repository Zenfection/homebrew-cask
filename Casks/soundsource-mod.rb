cask "soundsource-mod" do
    version "5.7.2"
    sha256 "1f96e1ec97bf3524ec7b6319e92ab4782ad828bd1f826595ac82cc017ecf0d1b"

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
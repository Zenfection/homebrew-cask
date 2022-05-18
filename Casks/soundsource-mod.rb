cask "soundsource-mod" do
  version "5.5.1"
  sha256 "b447ce3b6af27cf7ca67f05e2ef73fce15688de906583670a717dfa4f1067b33"
  url "https://github.com/Zenfection/macos/releases/download/1.0/SoundSource_#{version}.dmg"
  name "SoundSource"
  desc "Sound and audio controller"
  homepage "https://github.com/zenfection/macos"

  livecheck do
    url "https://rogueamoeba.com/soundsource/releasenotes.php"
    regex(/ra-version=["']?(\d+(?:\.\d+)+)["' >]/i)
  end

  auto_updates false
  depends_on macos: ">= :high_sierra"

  app "SoundSource.app"

  zap trash: [
    "~/Library/Application Support/SoundSource",
    "~/Library/Caches/com.rogueamoeba.soundsource",
    "~/Library/Preferences/com.rogueamoeba.soundsource.plist",
    "~/Library/WebKit/com.rogueamoeba.soundsource",
  ]
end

cask "yoink-mod" do
    version "3.6.85"
    sha256 "50d9ca58c210a2c74249f2b478bee0a1fee1ffff80f7903e3c0be0a3bc7d56da"
    url "https://dl.dropboxusercontent.com/scl/fi/d7re3goxrj4q7m0jv34w5/Yoink-v3.6.85.dmg?rlkey=a8tc0zlssqtuvkq8d28f0sydj&dl=0"
    name "Yoink"
    desc "Yoink simplifies and improves drag and drop between windows, apps, spaces and fullscreen apps. The app has been repeatedly featured by on the Mac App Store in numerous categories and was recommended by John Gruber of DaringFireball and Federico Viticci of MacStories."
    homepage "https://github.com/zenfection/macos"

    auto_updates true
    depends_on macos: ">= :mojave"

    app "Yoink.app"
end
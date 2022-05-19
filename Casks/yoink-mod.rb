cask "yoink-mod" do
    version "3.6.82"
    sha256 "940ca6ed58c45c0fbb861d87be9d498ce949ade4d7d43e57f1ff82c49da7d1b8"
    url "https://github.com/Zenfection/macos/releases/download/1.0/Yoink_#{version}.dmg"
    name "Yoink"
    desc "Yoink simplifies and improves drag and drop between windows, apps, spaces and fullscreen apps. The app has been repeatedly featured by on the Mac App Store in numerous categories and was recommended by John Gruber of DaringFireball and Federico Viticci of MacStories."
    homepage "https://github.com/zenfection/macos"

    auto_updates true
    depends_on macos: ">= :mojave"

    app "Yoink.app"
end
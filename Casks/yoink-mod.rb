cask "yoink-mod" do
    version "3.6.94"
    sha256 "6dc9536feace331644a00c0dda3e7d967da07063684817a6586060b8fe57605e"
    url "https://github.com/Zenfection/macos/releases/download/1.0/Yoink_#{version}.dmg"
    name "Yoink"
    desc "Yoink simplifies and improves drag and drop between windows, apps, spaces and fullscreen apps. The app has been repeatedly featured by on the Mac App Store in numerous categories and was recommended by John Gruber of DaringFireball and Federico Viticci of MacStories."
    homepage "https://github.com/zenfection/macos"

    auto_updates true
    depends_on macos: ">= :mojave"

    app "Yoink.app"
end
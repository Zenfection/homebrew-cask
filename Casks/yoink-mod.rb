cask "yoink-mod" do
    version "3.6.92"
    sha256 "95481d1f3c365eb8f22028fe35e92eeebc1000d3d3d4627ef8477d4a92a09f07"
    url "https://github.com/Zenfection/macos/releases/download/1.0/Yoink_#{version}.dmg"
    name "Yoink"
    desc "Yoink simplifies and improves drag and drop between windows, apps, spaces and fullscreen apps. The app has been repeatedly featured by on the Mac App Store in numerous categories and was recommended by John Gruber of DaringFireball and Federico Viticci of MacStories."
    homepage "https://github.com/zenfection/macos"

    auto_updates true
    depends_on macos: ">= :mojave"

    app "Yoink.app"
end
cask "yoink-mod" do
    version "3.6.88"
    sha256 "3b4be8989c610839e00cae91fec55b90b452a6bc91b13ca315a6c213fb9117d5"
    url "https://dl.dropboxusercontent.com/s/74sa35pljaauinp/Yoink%203.6.88.dmg?dl=0"
    name "Yoink"
    desc "Yoink simplifies and improves drag and drop between windows, apps, spaces and fullscreen apps. The app has been repeatedly featured by on the Mac App Store in numerous categories and was recommended by John Gruber of DaringFireball and Federico Viticci of MacStories."
    homepage "https://github.com/zenfection/macos"

    auto_updates true
    depends_on macos: ">= :mojave"

    app "Yoink.app"
end
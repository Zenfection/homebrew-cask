cask "yoink-mod" do
    version "3.6.86"
    sha256 "d5aab3fa890fab072daf9a7d9437a1208a3b90b0ccdeb3bad827e513d91bba6c"
    url "https://dl.dropboxusercontent.com/s/13m9t45zaed05h6/Yoink%203.6.86.dmg?dl=0"
    name "Yoink"
    desc "Yoink simplifies and improves drag and drop between windows, apps, spaces and fullscreen apps. The app has been repeatedly featured by on the Mac App Store in numerous categories and was recommended by John Gruber of DaringFireball and Federico Viticci of MacStories."
    homepage "https://github.com/zenfection/macos"

    auto_updates true
    depends_on macos: ">= :mojave"

    app "Yoink.app"
end
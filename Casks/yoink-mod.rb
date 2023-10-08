cask "yoink-mod" do
    version "3.6.87"
    sha256 "f0d0f083aa3bc5c8a20bb5e82291fc8a09e70151ce43448bf82493f66925cc62"
    url "https://dl.dropboxusercontent.com/s/dhwj8e8xzviff53/Yoink%203.6.87.dmg?dl=0"
    name "Yoink"
    desc "Yoink simplifies and improves drag and drop between windows, apps, spaces and fullscreen apps. The app has been repeatedly featured by on the Mac App Store in numerous categories and was recommended by John Gruber of DaringFireball and Federico Viticci of MacStories."
    homepage "https://github.com/zenfection/macos"

    auto_updates true
    depends_on macos: ">= :mojave"

    app "Yoink.app"
end
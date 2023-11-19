cask "yoink-mod" do
    version "3.6.89"
    sha256 "0e07faa89019b62f00f10ac43783a84ae934d5de16737c4557d522c3d6a8589f"
    url "https://github.com/Zenfection/macos/releases/download/1.0/Yoink_#{version}.dmg"
    name "Yoink"
    desc "Yoink simplifies and improves drag and drop between windows, apps, spaces and fullscreen apps. The app has been repeatedly featured by on the Mac App Store in numerous categories and was recommended by John Gruber of DaringFireball and Federico Viticci of MacStories."
    homepage "https://github.com/zenfection/macos"

    auto_updates true
    depends_on macos: ">= :mojave"

    app "Yoink.app"
end
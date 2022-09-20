cask "yoink-mod" do
    version "3.6.83"
    sha256 "34ec9f0a3361f611681f464c840e36cbe9796af7195ee888eea399856ea4fa7a"
    url "https://github.com/Zenfection/macos/releases/download/1.0/Yoink_#{version}.dmg"
    name "Yoink"
    desc "Yoink simplifies and improves drag and drop between windows, apps, spaces and fullscreen apps. The app has been repeatedly featured by on the Mac App Store in numerous categories and was recommended by John Gruber of DaringFireball and Federico Viticci of MacStories."
    homepage "https://github.com/zenfection/macos"

    auto_updates true
    depends_on macos: ">= :mojave"

    app "Yoink.app"
end
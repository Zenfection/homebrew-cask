cask "videoproc-mod" do
    version "5.3"
    sha256 "ac9bcd8251d0e225ac3ea5bb3f560d5dddf6687ae98fe0b7d2538105e59b732d"
    url "https://github.com/Zenfection/macos/releases/download/1.0/VideoProc.Converter_#{version}.dmg"
    name "VideoProc Convert"
    desc "New video processing software designed to cut, trim, merge, adjust, transcode, edit 4k video with full hardware acceleration."
    homepage "https://github.com/zenfection/macos"

    auto_updates true
    depends_on macos: ">= :mojave"

    app "VideoProc Converter.app"
end
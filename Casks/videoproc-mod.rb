cask "videoproc-mod" do
    version "5.1"
    sha256 "1cabed377186c63992219ef8f64f3cfa87e73f02e7eb9bc9cce3ba8aef135fa5"
    url "https://github.com/Zenfection/macos/releases/download/1.0/VideoProc.Converter_#{version}.dmg"
    name "VideoProc Convert"
    desc "New video processing software designed to cut, trim, merge, adjust, transcode, edit 4k video with full hardware acceleration."
    homepage "https://github.com/zenfection/macos"

    auto_updates true
    depends_on macos: ">= :mojave"

    app "VideoProc Converter.app"
end
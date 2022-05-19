cask "videoproc-mod" do
    version "4.7"
    sha256 "74c7d8d0c80b5fa0ddff24d3330365e85474f14fdfd45e39c7c538125a82e71c"
    url "https://github.com/Zenfection/macos/releases/download/1.0/VideoProc.Converter_#{version}.dmg"
    name "VideoProc Convert"
    desc "New video processing software designed to cut, trim, merge, adjust, transcode, edit 4k video with full hardware acceleration."
    homepage "https://github.com/zenfection/macos"

    auto_updates true
    depends_on macos: ">= :mojave"

    app "VideoProc Converter.app"
end
cask "videoproc-mod" do
    version "5.2"
    sha256 "16ed6bc91384a80c40fd64cef2add02e8f627fd42a0dafb7084dd5cc86ab7821"
    url "https://github.com/Zenfection/macos/releases/download/1.0/VideoProc.Converter_#{version}.dmg"
    name "VideoProc Convert"
    desc "New video processing software designed to cut, trim, merge, adjust, transcode, edit 4k video with full hardware acceleration."
    homepage "https://github.com/zenfection/macos"

    auto_updates true
    depends_on macos: ">= :mojave"

    app "VideoProc Converter.app"
end
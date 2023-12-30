cask "videoproc-mod" do
    version "6.2"
    sha256 "2d15c18ba900eed8bbf6e4890c6209b6aecef2241ec0e46b35b80c2b6ddbd6d4"
    url "https://github.com/Zenfection/macos/releases/download/1.0/VideoProc.Converter_#{version}.dmg"
    name "VideoProc Convert"
    desc "New video processing software designed to cut, trim, merge, adjust, transcode, edit 4k video with full hardware acceleration."
    homepage "https://github.com/zenfection/macos"

    auto_updates true
    depends_on macos: ">= :mojave"

    app "VideoProc Converter 4K.app"
end
cask "videoproc-mod" do
    version "5.0"
    sha256 "b67f1b449234a1323dfe4cf8dbe07d3bac03a7761ff8cb917cbca4138e87d374"
    url "https://github.com/Zenfection/macos/releases/download/1.0/VideoProc.Converter_#{version}.dmg"
    name "VideoProc Convert"
    desc "New video processing software designed to cut, trim, merge, adjust, transcode, edit 4k video with full hardware acceleration."
    homepage "https://github.com/zenfection/macos"

    auto_updates true
    depends_on macos: ">= :mojave"

    app "VideoProc Converter.app"
end
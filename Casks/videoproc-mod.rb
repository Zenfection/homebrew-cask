cask "videoproc-mod" do
    version "5.7"
    sha256 "8e5096490f5ef6004fce7e484af699e163da69d47b0392f8366e991ea90efe3a"
    url "https://github.com/Zenfection/macos/releases/download/1.0/VideoProc.Converter_#{version}.dmg"
    name "VideoProc Convert"
    desc "New video processing software designed to cut, trim, merge, adjust, transcode, edit 4k video with full hardware acceleration."
    homepage "https://github.com/zenfection/macos"

    auto_updates true
    depends_on macos: ">= :mojave"

    app "VideoProc Converter 4K.app"
end
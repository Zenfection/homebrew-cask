cask "movavi-convert-mod" do
    version "22.4.0"
    sha256 "5b87b9339da4d451e8900906eaf7a4fa4fbae211d7f34a931b755a2d1807f5ef"
    url "https://github.com/Zenfection/macos/releases/download/1.0/Movavi.Video.Converter.#{version.major}.Premium_#{version}.dmg"
    name "Movavi Convert Premium"
    desc "Movavi Video Converter is a video and audio file converter. Convert video and audio on your Mac. Save videos for watching on your portable device. Extract soundtracks from video. And much more…"
    homepage "https://github.com/zenfection/macos"

    auto_updates true
    depends_on macos: ">= :mojave"

    app "Movavi Video Converter 22 Premium.app"
end
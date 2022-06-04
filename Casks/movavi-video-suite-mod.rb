cask "movavi-video-suite-mod" do
    version "22.3.0"
    sha256 "35114d3d96569382abf868b1fafceb67257950dd72203af068fa0db267b10f4a"
    url "https://github.com/Zenfection/macos/releases/download/1.0/Movavi_Video_Suite.#{version.major}.Premium_#{version}.dmg"
    name "Movavi Video Suite"
    desc "Movavi Video Suite is comprehensive video making software that helps you create professional-looking movies and slideshows on your home computer – even if you have no experience.Incorporate music, create text captions, apply visual effects and transitions – you can do whatever you want with your video. In addition to the video making app, Movavi Video Suite contains a number of useful apps to help every video maker: powerful video converter that supports 180+ media formats, convenient utility for burning DVDs, a special tool for digitizing analog video, and more."
    homepage "https://github.com/zenfection/macos"

    auto_updates true
    depends_on macos: ">= :mojave"

    pkg "Movavi Video Suite #{version} REPACK.pkg"
end
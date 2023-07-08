cask "blocs-mod" do
    version "5.1.0"
    sha256 "f9258acb39a50148b2ea1f1464f21a311f53d3170a919cc1dd7833914d6b3a50"
  
    url "https://dl.dropboxusercontent.com/scl/fi/yp5i3xxii6fcspcw95975/Blocs_5.1.0.dmg?rlkey=dxo8u8b7l2dwlorhbletjzlgm&dl=0"
    name "Blocs"
    desc "Visual web design software"
    homepage "https://github.com/zenfection/macos"
  
    livecheck do
      url "https://blocsapp.com/update/v#{version.major}/info.xml"
      strategy :sparkle
    end
  
    auto_updates true
    depends_on macos: ">= :sierra"
    container nested: "Blocs/Blocs-#{version.major}.dmg"
  
    app "Blocs.app"
  end
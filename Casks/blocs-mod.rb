cask "blocs-mod" do
    version "5.0.5"
    sha256 "fddf32da0565db9ff23a493d51cc7b3e7d9e1fa29027458695dd0221f0852a0b"
  
    url "https://github.com/Zenfection/macos/releases/download/1.0/Blocs_#{version}.dmg"
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
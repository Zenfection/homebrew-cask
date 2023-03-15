cask "blocs-mod" do
    version "5.0.7"
    sha256 "f63a5977eafaefedd7888b233c650b0a52698b33f141259c38accd5836130caa"
  
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
cask "blocs-mod" do
    version "5.0.8"
    sha256 "63eb97b4c886722bbe2f975afde97acac27d7075ec0f720876f1989f72dec0f6"
  
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
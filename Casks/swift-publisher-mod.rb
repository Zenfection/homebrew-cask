cask "swift-publisher-mod" do
    version "5.6.6"
    sha256 "22197951ac4b4831b535a4011ca15c9ef4f9cbc7663243838c4858ea9100d430"
  
    url "https://github.com/Zenfection/macos/releases/download/1.0/Swift.Publisher_#{version}.dmg",
    name "Swift Publisher"
    desc "Page layout and desktop publishing application"
    homepage "https://www.swiftpublisher.com/"
  
    livecheck do
      url "https://www.belightsoft.com/download/updates/appcast_SwiftPublisher#{version.major}.xml"
      strategy :sparkle, &:short_version
    end
  
    depends_on macos: ">= :sierra"
  
    app "Swift Publisher #{version.major}.app"
  end
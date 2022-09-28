cask "camtasia-mod" do
    version "2022.3.0"
    sha256 "95b73dab697ff8a43e6a24ae3af34e1301b8e53e1cad63a5c0078e5176cd5094"
    url "https://github.com/Zenfection/macos/releases/download/1.0/Camtasia_#{version}.dmg"
    name "Camtasia"
    desc "Screen recorder and video editor"
    homepage "https://github.com/zenfection/macos"
  
    livecheck do
      url "https://support.techsmith.com/api/v2/help_center/en-us/articles/115006624748"
      regex(/Camtasia\s*\(Mac\)\s*(\d+(?:\.\d+)+)/i)
    end

    auto_updates true
    depends_on macos: ">= :mojave"
  
    app "Camtasia #{version.major}.app"
  
    zap trash: [
      "~/Library/Application Support/TechSmith/Camtasia#{version.major}",
      "~/Library/Preferences/com.techsmith.camtasia2021.plist",
      "/Users/Shared/TechSmith/Camtasia",
    ]
  end
cask "camtasia-mod" do
    version "2022.0.2"
    sha256 "2ac0c2cba01e7bdf34956e469531d31ebce6a90592c2b43ce6dcf700c7e58337"
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
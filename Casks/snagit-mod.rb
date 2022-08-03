cask "snagit-mod" do
    version "2022.1.2"
    sha256 "f6fb755a7aa8a6ece4430972a7f3d1555ded117920728b26f3f91552078f2394"
  
    url "https://github.com/Zenfection/macos/releases/download/1.0/Snagit_#{version}.dmg"
    name "Snagit"
    desc "Screen capture software"
    homepage "https://github.com/zenfection/macos"
  
    livecheck do
      url "https://www.techsmith.com/api/v/1/products/getallversions/100"
      strategy :page_match do |page|
        v = JSON.parse(page).first
        "20#{v["Major"]}.#{v["Minor"]}.#{v["Maintenance"]}"
      end
    end
  
    depends_on macos: ">= :big_sur"
  
    app "Snagit #{version.major}.app"
  
    zap trash: [
      "~/Library/Caches/com.TechSmith.Snagit*",
      "~/Library/Group Containers/*.com.techsmith.snagit",
      "~/Library/Preferences/com.TechSmith.Snagit*.plist",
      "~/Library/Preferences/com.techsmith.snagit.capturehelper*.plist",
      "~/Library/Saved Application State/com.TechSmith.Snagit*.savedState",
      "~/Library/WebKit/com.TechSmith.Snagit*",
    ]
  end
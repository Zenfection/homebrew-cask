cask "snagit-mod" do
    version "2022.2.3"
    sha256 "55ce0e390f612fd32211c38fb2a69d15c7eecd279a6f9c699f8373f9402cf571"
  
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
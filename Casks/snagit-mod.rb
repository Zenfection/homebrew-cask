cask "snagit-mod" do
    version "2023.1.2"
    sha256 "9692d0cf8cb530bd0bb6180cbaca959ac0969919f84ff2a650eb75df80a5c9f4"
  
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
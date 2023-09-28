cask "snagit-mod" do
    version "2023.2.3"
    sha256 "64497ffc888e59b092836729c422514da55a0453a259a39c3ee971e46440cef4"

    url "https://dl.dropboxusercontent.com/s/75gbciobqjpz7da/Snagit%202023.2.3.dmg?dl=0"
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
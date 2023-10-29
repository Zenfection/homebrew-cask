cask "snagit-mod" do
    version "2024.0.1"
    sha256 "dbf6b5a98e0d9aeaaad25dc7ea38a49c2f1222d759aa5b9a57ed5ea9576343c7"

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
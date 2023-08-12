cask "snagit-mod" do
    version "2023.2.1"
    sha256 "b474ee056ed6de17e90d196270ec0c4874e421b101673d8585ba06c5f900b5f5"

    url "https://www.dropbox.com/scl/fi/rvbqpybklmmh2bq58o1p2/Snagit_2023.2.1.dmg?rlkey=a6fu0cct5ravncmbc8x485jcq&dl=0"
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
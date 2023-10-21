cask "camtasia-mod" do
    version "2023.3.2"
    sha256 "42afc0b672b65802ff0d1659f2e5a36a270f11e68c0c380bb6bd660544a86f97"
    url "https://dl.dropboxusercontent.com/s/o3c2uoqx4l2g26i/Camtasia%202023%202023.3.2.dmg?dl=0"
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
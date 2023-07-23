cask "camtasia-mod" do
    version "2023.1.1"
    sha256 "b0feb3c885becff13c08a03f0bf6b21aed7089c640913a504322ee458f393340"
    url "https://dl.dropboxusercontent.com/scl/fi/cgac4j98sqc1dzj8uqek5/Camtasia_2023_2023.1.1.dmg?rlkey=15gv8w91idcy8jc6om2ag527h&dl=0"
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
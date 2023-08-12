cask "camtasia-mod" do
    version "2023.1.2"
    sha256 "6df286cb027d959e95091c11e8e673c318a7b911c8654c1934a81625881c35d7"
    url "https://www.dropbox.com/s/68zgwe9my5phba6/Camtasia_2023_2023.1.2.dmg?dl=0"
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
cask "camtasia-mod" do
    version "2023.2.2"
    sha256 "3a85d10afcc0441cc9bdbe49a5b94745e015cf520e74bc7cb30be1bba89b3596"
    url "https://dl.dropboxusercontent.com/s/xes6z0ykh2l7dyd/Camtasia%202023%202023.2.2.dmg?dl=0"
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
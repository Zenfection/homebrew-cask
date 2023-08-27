cask "camtasia-mod" do
    version "2023.2.1"
    sha256 "1905296e771303d5033c8a342c1d8ac77f2fae9274f42f56967bd1d739c42c6e"
    url "https://www.dropbox.com/scl/fi/fehwhx5omdv9b2xycxrg9/Camtasia-2023-2023.2.1.dmg?rlkey=7vk7wj4hjz4jewoarodg7fl19&dl=0"
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
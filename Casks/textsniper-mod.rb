cask "textsniper-mod" do
    version "1.10.1"
    sha256 "aea37c1231d1c7275ef035fea4a74641f954744c315203cb21f777bcf82dff7f"

    url "https://github.com/Zenfection/macos/releases/download/1.0/TextSniper_#{version}.dmg"
    name "textsniper"
    desc "Extract text from images and other digital documents in seconds"
    homepage "https://textsniper.app/"

    livecheck do
      url "https://textsniper.app/api/downloads/mac-latest"
      strategy :header_match
    end

    auto_updates true
    depends_on macos: ">= :catalina"

    app "TextSniper.app"

    uninstall  quit:      "com.valerijs.boguckis.TextSniper",
               launchctl: "com.valerijs.boguckis.TextSniper-LaunchAtLoginHelper",
               delete:    "/Applications/TextSniper.app"

    zap trash: [
      "~/Library/Application Scripts/com.valerijs.boguckis.TextSniper-LaunchAtLoginHelper",
      "~/Library/Application Support/com.valerijs.boguckis.TextSniper",
      "~/Library/Caches/com.valerijs.boguckis.TextSniper",
      "~/Library/Containers/com.valerijs.boguckis.TextSniper-LaunchAtLoginHelper",
      "~/Library/Preferences/com.valerijs.boguckis.TextSniper.plist",
    ]
  end
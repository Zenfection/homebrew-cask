cask "kaleidoscope-mod" do
  version "4.1.0"
  sha256 "329c675641d276b557b7931edc206e8af1f232d72da10c4f45fe317c79bc90a8"
  url "https://dl.dropboxusercontent.com/scl/fi/xytakyhgm8qw5lioogx79/Kaleidoscope_4.1.dmg?rlkey=7alvw75u4u7w55tg31oyee5pz&dl=0"
  name "Kaleidoscope"
  desc "Spot and merge differences in text and image files or folders"
  homepage "https://github.com/zenfection/macos"

  livecheck do
    url "https://updates.kaleidoscope.app/v#{version.major}/prod/appcast"
    regex(/Kaleidoscope[._-]v?(\d+(?:\.\d+)+)[._-](\d+)\.app\.zip/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Kaleidoscope.app"

  zap trash: [
    "~/Library/Application Support/app.kaleidoscope.v*",
    "~/Library/Application Support/com.blackpixel.kaleidoscope",
    "~/Library/Application Support/Kaleidoscope",
    "~/Library/Caches/app.kaleidoscope.v*",
    "~/Library/Caches/com.blackpixel.kaleidoscope",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.blackpixel.kaleidoscope",
    "~/Library/Preferences/app.kaleidoscope.v*.plist",
    "~/Library/Preferences/com.blackpixel.kaleidoscope.plist",
    "~/Library/Saved Application State/app.kaleidoscope.v*.savedState",
    "~/Library/Saved Application State/com.blackpixel.kaleidoscope.savedState",
    "~/Library/WebKit/app.kaleidoscope.v*",
  ]
end

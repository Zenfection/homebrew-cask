cask "kaleidoscope-mod" do
  version "6.0"
  sha256 "6035f4eab1ef2baf5cf8b8f93938d760f7c3121518054b1f87e82c61a021d9bf"
  url "https://github.com/Zenfection/macos/releases/download/1.0/Kaleidoscope_#{version}.dmg"
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

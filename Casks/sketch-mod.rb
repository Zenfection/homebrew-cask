cask "sketch-mod" do
    version "98.3"
    sha256 "01a910ab134bddc42daaa5fecbde323461289bc2dbeb62b0d972a68f70eb8468"

    url "https://github.com/Zenfection/macos/releases/download/1.0/Sketch_#{version}.dmg"
    name "Sketch"
    desc "Digital design and prototyping platform"
    homepage "https://www.sketch.com/"

    auto_updates true
    depends_on macos: ">= :big_sur"

    app "Sketch.app"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.bohemiancoding.sketch3.sfl*",
      "~/Library/Application Support/com.bohemiancoding.sketch3",
      "~/Library/Autosave Information/com.bohemiancoding.sketch3.plist",
      "~/Library/Caches/com.bohemiancoding.sketch3",
      "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.bohemiancoding.sketch3",
      "~/Library/Cookies/com.bohemiancoding.sketch3.binarycookies",
      "~/Library/HTTPStorages/com.bohemiancoding.sketch3.binarycookies",
      "~/Library/Logs/com.bohemiancoding.sketch3",
      "~/Library/Preferences/com.bohemiancoding.sketch3.LSSharedFileList.plist",
      "~/Library/Preferences/com.bohemiancoding.sketch3.plist",
      "~/Library/Saved Application State/com.bohemiancoding.sketch3.savedState",
    ]
  end
  Footer

cask "sketch-mod" do
    version "98"
    sha256 "48fe4121e270620bed42d375bdd6d53986972e71381b620894a8e4a528aaec5c"

    url "https://dl.dropboxusercontent.com/scl/fi/yruumcsab0px967akx9cl/Sketch-98.dmg?rlkey=7yfw0a8vvipusuwqow9hke49m&dl=0"
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

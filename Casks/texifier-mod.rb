cask "texifier-mod" do
    version "1.9.20"
    sha256 "113d78afa103154f90d5b7a4f2c9ad187bbc662df82c14cbb4644e8c5ae082d6"
    url "https://github.com/Zenfection/macos/releases/download/1.0/Texifier_#{version}.dmg"
    name "Texifier"
    desc "LaTeX editor"
    homepage "https://www.texifier.com/mac"

    auto_updates true
    depends_on macos: ">= :big_sur"

    app "Texifier.app"

    zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.vallettaventures.texpad.sfl2",
    "~/Library/Application Support/CloudDocs/session/containers/iCloud.com.vallettaventures.texpadm",
    "~/Library/Application Support/CloudDocs/session/containers/iCloud.com.vallettaventures.texpadm.plist",
    "~/Library/Application Support/Texpad",
    "~/Library/Caches/com.vallettaventures.Texpad",
    "~/Library/Cookies/com.vallettaventures.Texpad.binarycookies",
    "~/Library/HTTPStorages/com.vallettaventures.Texpad",
    "~/Library/HTTPStorages/com.vallettaventures.Texpad.binarycookies",
    "~/Library/Preferences/com.vallettaventures.Texpad.plist",
    "~/Library/Saved Application State/com.vallettaventures.Texpad.savedState",
    "~/Library/WebKit/com.vallettaventures.Texpad",
    ]
end
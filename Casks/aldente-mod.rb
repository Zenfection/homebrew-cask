cask "sha" do
    version "1.22.2"
    sha256 "cf9b7259b1162fefbab85b9e9f023db5a91ba539a31a501e5e2934a8a4b6011e"

    url "https://dl.dropboxusercontent.com/s/lgsbtyag9610qp8/AlDente%20Pro%20v1.22.2.dmg?dl=0"
    name "AlDente"
    desc "Menu bar tool to limit maximum charging percentage"
    homepage "https://github.com/davidwernhart/AlDente"

    # livecheck do
    #   url :url
    #   strategy :github_latest
    # end

    auto_updates true
    depends_on macos: ">= :big_sur"

    app "AlDente.app"

    uninstall quit:   "com.davidwernhart.Helper",
              delete: [
                "/Library/LaunchDaemons/com.apphousekitchen.aldente-pro.helper.plist",
                "/Library/PrivilegedHelperTools/com.apphousekitchen.aldente-pro.helper",
              ]

    zap trash: [
      "~/Library/Application Support/AlDente",
      "~/Library/Caches/com.apphousekitchen.aldente-pro",
      "~/Library/HTTPStorages/com.apphousekitchen.aldente-pro.binarycookies",
    ]
  end
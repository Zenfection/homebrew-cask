cask "adobe-acrobat-pro-mod" do
    version "2023.003.20244"
    sha256 "f69bfd5614e703d1e86d8118dbb4786d9f0a0dc3b41580b6406dff293d45fcd4"

    url "https://dl.dropboxusercontent.com/s/epbw859j7ejwky3/Adobe_Acrobat_Pro_DC_23_003_20244_Torrentmac.net.dmg?dl=0"
    name "Adobe Acrobat Pro DC"
    desc "View, create, manipulate, print and manage files in Portable Document Format"
    homepage "https://github.com/zenfection/macos"

    auto_updates true

    pkg "Acrobat DC Installer.pkg"

    uninstall pkgutil:   [
                "com.adobe.acrobat.DC.*",
                "com.adobe.PDApp.AdobeApplicationManager.installer.pkg",
                "com.adobe.AcroServicesUpdater",
                "com.adobe.armdc.app.pkg",
            ],
            launchctl: [
                "Adobe_Genuine_Software_Integrity_Service",
                "com.adobe.AAM.Startup-1.0",
                "com.adobe.AAM.Updater-1.0",
                "com.adobe.ARMDC.Communicator",
                "com.adobe.ARMDC.SMJobBlessHelper",
                "com.adobe.ARMDCHelper.cc24aef4a1b90ed56a725c38014c95072f92651fb65e1bf9c8e43c37a23d420d",
                "com.adobe.agsservice",
            ],
            delete:    "/Applications/Adobe Acrobat DC/"

    zap trash: [
      "~/Library/Application Support/Adobe/Acrobat/",
      "~/Library/Caches/Acrobat",
      "~/Library/Caches/com.adobe.Acrobat.Pro",
      "~/Library/HTTPStorages/com.adobe.Acrobat.Pro",
      "~/Library/HTTPStorages/com.adobe.Acrobat.Pro.binarycookies",
      "~/Library/Preferences/Adobe/Acrobat/",
      "~/Library/Preferences/com.adobe.Acrobat.Pro.plist",
      "~/Library/Saved Application State/com.adobe.Acrobat.Pro.savedState",
      "~/Library/WebKit/com.adobe.Acrobat.Pro",
    ]
end
cask "adobe-acrobat-pro-mod" do
    version "23.001.20063"
    sha256 "7fb7e9dd7ef75971ebb02dfe2fe8a924f69671282f7ca0218863a92534743a38"

    url "https://github.com/Zenfection/macos/releases/download/1.0/Adobe.Acrobat.Pro.DC_#{version}.dmg"
    name "Adobe Acrobat Pro DC"
    desc "View, create, manipulate, print and manage files in Portable Document Format"
    homepage "https://github.com/zenfection/macos"

    auto_updates true

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
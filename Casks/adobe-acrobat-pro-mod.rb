cask "adobe-acrobat-pro-mod" do
    version "2023.003.20244"
    sha256 "54fe08bee4759b48efd44eb40b94c12981018fad66897987cee6e587abc14b87"

    url "https://dl.dropboxusercontent.com/scl/fi/ush50kij38cgfw7kuyzju/Acrobat-Pro-DC-2023-v2023.003.20244.dmg?rlkey=dnz7gjy4ybbeljo4jfh1e4a7j&dl=0"
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
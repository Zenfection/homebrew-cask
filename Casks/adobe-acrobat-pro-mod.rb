cask "adobe-acrobat-pro-mod" do
    version "22.001.20112"
    sha256 "b111f1190a12d6c04209328939446f422368ca5db49237e890850b4624bf4c8b"

    url "https://github.com/Zenfection/macos/releases/download/1.0/Acrobat_DC_Web_WWMUI_#{version}.zip"
    name "Adobe Acrobat Pro DC"
    desc "View, create, manipulate, print and manage files in Portable Document Format"
    homepage "https://github.com/zenfection/macos"

    auto_updates true

    pkg "Acrobat DC/Acrobat DC Installer.pkg"
    artifact 'Acrobat', target: "/Applications/Adobe Acrobat DC/Adobe Acrobat.app/Contents/Frameworks/Acrobat.framework/Versions/Acrobat/A"
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
        "~/Library/Preferences/Adobe/Acrobat/",
        "~/Library/Preferences/com.adobe.Acrobat.Pro.plist",
    ]
  end
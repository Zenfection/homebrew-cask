cask "adobe-acrobat-pro-mod" do
    version "22.002.20191"
    sha256 "84ef79b8f7c0f61d2d7813b376218705862672c42ac67d5930e818e304bf965e"

    url "https://github.com/Zenfection/macos/releases/download/1.0/adobe-illustrator-mod.sh"
    name "Adobe Acrobat Pro DC"
    desc "View, create, manipulate, print and manage files in Portable Document Format"
    homepage "https://github.com/zenfection/macos"

    auto_updates true

    pkg "Acrobat DC 22.002.20191 U2B INSTALLER.pkg"
    pkg "Acrobat DC 22.002.20191 U2B PATCH [RiD].pkg"

    # artifact 'Acrobat', target: "/Applications/Adobe Acrobat DC/Adobe Acrobat.app/Contents/Frameworks/Acrobat.framework/Versions/Acrobat/A"
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
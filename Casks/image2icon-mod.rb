cask "image2icon-mod" do
  version "2.17"
  sha256 "e9cded557920710cfbe99a553ec4f7a156cb066d848d5c53f92d54afba22c149"
  url "https://github.com/Zenfection/macos/releases/download/1.0/Image2icon_#{version}.dmg"
  name "Image2Icon"
  desc "Icon creator and file and folder customizer"
  homepage "https://github.com/zenfection/macos"

  livecheck do
    url "http://apps.shinynode.com/apps/image2icon_appcast.xml"
    strategy :sparkle
  end

  auto_updates true

  app "Image2Icon.app"

  zap trash: [
    "~/Library/Caches/net.shinyfrog.image2icon",
    "~/Library/Preferences/net.shinyfrog.image2icon.plist",
    "~/Library/Containers/net.shinyfrog.image2icon*",
    "~/Library/Containers/net.shinyfrog.templateRenderer",
    "~/Library/Saved Application State/net.shinyfrog.image2icon.savedState",
  ]
end

cask "nearside" do
  version "0.3.0"
  sha256 "3676e9846cf55921466d80b7ba191dc6b2caf87f2dc42167b3cdb1f57183ba54"

  url "https://github.com/ramiejleh/Nearside/releases/download/v#{version}/Nearside-#{version}.zip"
  name "Nearside"
  desc "Your Android phone on your Mac: clipboard, notifications, messages, files and apps"
  homepage "https://ramiejleh.github.io/Nearside/"

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Nearside.app"

  zap trash: [
    "~/Library/Application Support/Nearside",
    "~/Library/Preferences/dev.nearside.mac.plist",
    "~/Library/Caches/dev.nearside.mac",
  ]
end

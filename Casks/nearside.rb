cask "nearside" do
  version "0.3.2"
  sha256 "0304c55e3f044aeeac69ecec928b6ccd75244fb25d30095b3010c1dd602696f3"

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

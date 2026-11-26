cask "meridian" do
  version "1.5.2"
  sha256 "6d76a4ad94a55097b852e7d173b353bfccf20917ff4971a6f238818b6f2bf2e0"

  url "https://github.com/Undermove/meridian-browser/releases/download/v#{version}/Meridian-#{version}-mac-arm64.dmg"
  name "Meridian"
  desc "Chromium-based browser with vertical tabs, spaces and split view"
  homepage "https://meridianbrowser.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Meridian.app"

  zap trash: [
    "~/Library/Application Support/Meridian Browser",
    "~/Library/Application Support/Meridian",
    "~/Library/Caches/dev.meridian.browser",
    "~/Library/Caches/Meridian Browser",
    "~/Library/HTTPStorages/dev.meridian.browser",
    "~/Library/Preferences/dev.meridian.browser.plist",
    "~/Library/Saved Application State/dev.meridian.browser.savedState",
  ]
end

cask "crunchpad" do
  version "1.0.3"
  sha256 "54a9d9a6531cf0ca4fe39f294cf1c9b98787c6382518f59581134b71e99cbe30"

  url "https://github.com/jimpayne1/crunchpad/releases/download/v#{version}/Crunchpad-#{version}.dmg"
  name "Crunchpad"
  desc "High-precision calculator built on the SpeedCrunch engine"
  homepage "https://github.com/jimpayne1/crunchpad"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Crunchpad.app"

  zap trash: [
    "~/Library/Application Support/Crunchpad",
    "~/Library/Preferences/io.github.jimpayne1.crunchpad.plist",
  ]
end

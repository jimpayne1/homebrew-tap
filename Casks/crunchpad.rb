cask "crunchpad" do
  version "1.0.2"
  sha256 "598eaba2efba5360956c2ad40446efe736c2c502761f12922c37cd7747da763e"

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

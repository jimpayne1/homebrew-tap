cask "crunchpad" do
  version "1.0.6"
  sha256 "d2b696c7247f643c7b670b06fcaeaffbb7d72f1b2f31245fb84fa7ed961c06ca"

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

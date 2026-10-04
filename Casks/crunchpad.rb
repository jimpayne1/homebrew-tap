cask "crunchpad" do
  version "1.0.1"
  sha256 "f543aa8c02fe925f56a2b00188566e842ca759bcc270249dd92ad3724dfc5367"

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

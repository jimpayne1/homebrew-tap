cask "crunchpad" do
  version "1.0.0"
  sha256 "bda6c29eca01a0c488c57433a3854eff1d4d35d5be3578a10cca86c9566e2002"

  url "https://github.com/jimpayne1/crunchpad/releases/download/v#{version}/Crunchpad-#{version}.dmg"
  name "Crunchpad"
  desc "High-precision calculator built on the SpeedCrunch engine"
  homepage "https://github.com/jimpayne1/crunchpad"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Crunchpad.app"

  zap trash: [
    "~/Library/Application Support/Crunchpad",
    "~/Library/Preferences/io.github.jimpayne1.crunchpad.plist",
  ]
end

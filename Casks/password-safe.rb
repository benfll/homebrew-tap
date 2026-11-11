cask "password-safe" do
  version "1.26.1"
  sha256 "57bb99715d2205bee1f29bdb4aa20d786e6e6ff85e71db40c6fa1807df4a28e0"

  url "https://downloads.sourceforge.net/passwordsafe/PasswordSafe-macOS-#{version}-universal.dmg"
  name "pwsafe"
  desc "Open source password manager"
  homepage "https://pwsafe.org/"

  livecheck do
    url "https://sourceforge.net/projects/passwordsafe/rss?path=/Linux"
  end

  depends_on :macos

  app "pwsafe.app"

  zap trash: [
    "~/.pwsafe",
    "~/Library/Preferences/org.pwsafe.pwsafe.plist",
  ]
end

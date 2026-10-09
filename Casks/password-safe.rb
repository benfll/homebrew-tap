cask "password-safe" do
  version "1.26.0"
  sha256 "360f6721fdc44adfce1a9b2cb9ef00418c391fe708b2467df5bf95878e31fbe8"

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

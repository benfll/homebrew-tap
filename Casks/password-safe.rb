cask "password-safe" do
  version "1.25.0"
  sha256 "a0165c9e4a8fbefb449c97a450bf57dde1fc12682d3d5d895335d9050c2e3588"

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

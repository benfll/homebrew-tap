cask "password-safe" do
  version "1.23.0"
  sha256 "5d95740a1a5cede8b11a858d173feed56a2dd20349b97a96cc1f47a5c0d1e41e"

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

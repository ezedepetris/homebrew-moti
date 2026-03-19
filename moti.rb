class Moti < Formula
  desc "Motivational quotes menu bar app for macOS"
  homepage "https://trymoti.app"

  url "https://trymoti.app/Moti.dmg"
  sha256 "801f44c4bcd54995a590335e1a2b5323a8c98095e48f76229e44788daaf3420d"
  version "0.1.2"
  license "MIT"

  depends_on :macos => :catalina

  def install
    system "curl", "-L", "-o", "Moti.dmg", "https://www.trymoti.app/Moti.dmg"
    system "hdiutil", "attach", "Moti.dmg", "-nobrowse", "-mountpoint", "/Volumes/Moti"
    cp_r "/Volumes/Moti/Moti.app", "#{prefix}/"
    system "hdiutil", "detach", "/Volumes/Moti"
  end
end

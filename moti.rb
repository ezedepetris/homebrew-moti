class Moti < Formula
  desc "Motivational quotes menu bar app for macOS"
  homepage "https://trymoti.app"

  url "https://trymoti.app/Moti.dmg"
  sha256 "d5d388ec4a05b11fbc5558cacf34353d0679c3e3e05ec4e3c3a19be817264869"
  version "0.1.0"
  license "MIT"

  bottle :unneeded

  depends_on :macos => :catalina

  def install
    dmg = download
    system "hdiutil", "attach", dmg, "-nobrowse", "-mountpoint", "/Volumes/Moti"
    cp_r "/Volumes/Moti/Moti.app", "#{prefix}/"
    system "hdiutil", "detach", "/Volumes/Moti"
  end
end

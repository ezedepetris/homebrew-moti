class Moti < Formula
  desc "Motivational quotes menu bar app for macOS"
  homepage "https://trymoti.app"

  url "https://trymoti.app/Moti.dmg"
  sha256 "93ce78743c7d5c966e8514647d99cd3142222ced8f018f3726c180bf470946aa"
  version "0.1.1"
  license "MIT"

  depends_on :macos => :catalina

  def install
    system "curl", "-L", "-o", "Moti.dmg", "https://www.trymoti.app/Moti.dmg"
    system "hdiutil", "attach", "Moti.dmg", "-nobrowse", "-mountpoint", "/Volumes/Moti"
    cp_r "/Volumes/Moti/Moti.app", "#{prefix}/"
    system "hdiutil", "detach", "/Volumes/Moti"
  end
end

class Swiftymocky < Formula
  desc "Framework for automatic mock generation. Adds a set of handy methods, simplifying testing. One of the best and most complete solutions, including generics support and much more."
  homepage "https://github.com/MakeAWishFoundation/SwiftyMocky"
  url "https://github.com/MakeAWishFoundation/SwiftyMocky/archive/refs/tags/4.1.0.tar.gz"
  sha256 "729a95f6ed232ca1f660b6e549649dd1e6b9b4960583434e5de64232b1e1a3e3"
  license "MIT"

  depends_on xcode: "13.0"
  depends_on "sourcery"

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    bin.install ".build/release/#{name}"
  end

  test do
    system "#{bin}/swiftymocky"
  end
end

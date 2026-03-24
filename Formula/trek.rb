class Trek < Formula
  desc "A terminal file manager with mouse-resizable panes"
  homepage "https://github.com/bradleyfay/trek"
  version "0.35.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bradleyfay/trek/releases/download/v0.35.0/trek-aarch64-apple-darwin.tar.gz"
      sha256 "94c1b50d652ea25aa1383d01a1ebd49b1af10ad344fb1280f4642fa753f14daa"
    end
    on_intel do
      url "https://github.com/bradleyfay/trek/releases/download/v0.35.0/trek-x86_64-apple-darwin.tar.gz"
      sha256 "84adc83a93fc604533a4857a1bac88df5807925c1d9a7ca8acdcbd966686f940"
    end
  end

  def install
    bin.install "trek"
  end

  test do
    system "\#{bin}/trek", "--help"
  end
end

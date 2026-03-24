class Trek < Formula
  desc "A terminal file manager with mouse-resizable panes"
  homepage "https://github.com/bradleyfay/trek"
  version "0.0.0"
  license "MIT"

  # Updated automatically by release workflow
  on_macos do
    on_arm do
      url "https://github.com/bradleyfay/trek/releases/download/v0.0.0/trek-aarch64-apple-darwin.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/bradleyfay/trek/releases/download/v0.0.0/trek-x86_64-apple-darwin.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install "trek"
  end

  test do
    system "#{bin}/trek", "--help"
  end
end

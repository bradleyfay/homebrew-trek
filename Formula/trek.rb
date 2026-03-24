class Trek < Formula
  desc "A terminal file manager with mouse-resizable panes"
  homepage "https://github.com/bradleyfay/trek"
  version "0.31.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bradleyfay/trek/releases/download/v0.31.0/trek-aarch64-apple-darwin.tar.gz"
      sha256 "608e77e7915bfaa7e790838af25b83b0cdab7aedba317bf586c860b0f52c13ff"
    end
    on_intel do
      url "https://github.com/bradleyfay/trek/releases/download/v0.31.0/trek-x86_64-apple-darwin.tar.gz"
      sha256 "d8a5b8c1e8a43c48fa0b639a83034e7ed52583e445a2095205315792dc4a524b"
    end
  end

  def install
    bin.install "trek"
  end

  test do
    system "\#{bin}/trek", "--help"
  end
end

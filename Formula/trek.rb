class Trek < Formula
  desc "A terminal file manager with mouse-resizable panes"
  homepage "https://github.com/bradleyfay/trek"
  version "0.41.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bradleyfay/trek/releases/download/v0.41.0/trek-aarch64-apple-darwin.tar.gz"
      sha256 "05ec545c8498bdd18b080e6c15bc5c1ce40f3acc60872d485085988467c303b3"
    end
    on_intel do
      url "https://github.com/bradleyfay/trek/releases/download/v0.41.0/trek-x86_64-apple-darwin.tar.gz"
      sha256 "9c87f0844768b33ec66709c6c5cd15c4f98a644b77aed328e17946c85f081ecb"
    end
  end

  def install
    bin.install "trek"
  end

  test do
    system "\#{bin}/trek", "--help"
  end
end

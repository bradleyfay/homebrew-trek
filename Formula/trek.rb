class Trek < Formula
  desc "A terminal file manager with mouse-resizable panes"
  homepage "https://github.com/bradleyfay/trek"
  version "0.48.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bradleyfay/trek/releases/download/v0.48.0/trek-aarch64-apple-darwin.tar.gz"
      sha256 "afdbb0b6b7d4c75da73327ebf1fbeb1500d0ae0ea80f0939e8a89e1e271aaf36"
    end
    on_intel do
      url "https://github.com/bradleyfay/trek/releases/download/v0.48.0/trek-x86_64-apple-darwin.tar.gz"
      sha256 "dde6cb1ceb2aa7a03eb764f3f710b7bd424bc62343a3d3e4492050c8f68d7301"
    end
  end

  def install
    bin.install "trek"
  end

  test do
    system "\#{bin}/trek", "--help"
  end
end

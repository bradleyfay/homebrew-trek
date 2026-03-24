class Trek < Formula
  desc "A terminal file manager with mouse-resizable panes"
  homepage "https://github.com/bradleyfay/trek"
  version "0.32.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bradleyfay/trek/releases/download/v0.32.0/trek-aarch64-apple-darwin.tar.gz"
      sha256 "2143c77ced041f8da8284c615a16e92c2b4e3f3d3c61c7b55cfe4b89e8deae89"
    end
    on_intel do
      url "https://github.com/bradleyfay/trek/releases/download/v0.32.0/trek-x86_64-apple-darwin.tar.gz"
      sha256 "ed2cd64b2591808462c4fc6c0eeb2982bb7ac49968fa06eb8c56ec5475597128"
    end
  end

  def install
    bin.install "trek"
  end

  test do
    system "\#{bin}/trek", "--help"
  end
end

class Trek < Formula
  desc "A terminal file manager with mouse-resizable panes"
  homepage "https://github.com/bradleyfay/trek"
  version "0.49.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bradleyfay/trek/releases/download/v0.49.0/trek-aarch64-apple-darwin.tar.gz"
      sha256 "a1b8d4f03fdb301bac5e3451c3182d96ab7e3766cead0c4f74771d47486ddbda"
    end
    on_intel do
      url "https://github.com/bradleyfay/trek/releases/download/v0.49.0/trek-x86_64-apple-darwin.tar.gz"
      sha256 "173db8d6f43b2c2aac56b91d67e59e2e11cdd01dfab946bc5def3748380b315e"
    end
  end

  def install
    bin.install "trek"
  end

  test do
    system "\#{bin}/trek", "--help"
  end
end

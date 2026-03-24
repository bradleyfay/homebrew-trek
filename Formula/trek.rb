class Trek < Formula
  desc "A terminal file manager with mouse-resizable panes"
  homepage "https://github.com/bradleyfay/trek"
  version "0.56.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bradleyfay/trek/releases/download/v0.56.0/trek-aarch64-apple-darwin.tar.gz"
      sha256 "eea1a4eaf20497151e6987a231e3e3597a4f243651e79d99dd9d4d41af9f04f2"
    end
    on_intel do
      url "https://github.com/bradleyfay/trek/releases/download/v0.56.0/trek-x86_64-apple-darwin.tar.gz"
      sha256 "afe68ea27580377159c5394fd13837d5eab69862ae3285bbce1bc655a1399251"
    end
  end

  def install
    bin.install "trek"
  end

  test do
    system "\#{bin}/trek", "--help"
  end
end

class Talk < Formula
  desc "Terminal listening companion — speak a reflection, and it settles into a quiet file"
  homepage "https://github.com/walktalkmeditate/talk-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/walktalkmeditate/talk-cli/releases/download/v0.1.0/talk-aarch64-apple-darwin.tar.gz"
      sha256 "fdf9cd0e50257edd3fd55e70c582943e4af20f64565b328ed1fb718049c83399"
    end
    on_intel do
      url "https://github.com/walktalkmeditate/talk-cli/releases/download/v0.1.0/talk-x86_64-apple-darwin.tar.gz"
      sha256 "49bd7f6e65b31a4d043f4d8d29679f9dfeb6971246147893f3674facb76f161f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/walktalkmeditate/talk-cli/releases/download/v0.1.0/talk-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5b92ba4d6cd917099b505faf5211f77658bcea25c6af9b3009907680da16a255"
    end
  end

  def install
    bin.install "talk"
  end

  def caveats
    "talk fetches its speech models on first run: run `talk download models` (~330 MB)."
  end

  test do
    assert_match "talk", shell_output("#{bin}/talk --version")
  end
end

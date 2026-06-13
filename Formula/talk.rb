class Talk < Formula
  desc "Terminal listening companion — speak a reflection, and it settles into a quiet file"
  homepage "https://github.com/walktalkmeditate/talk-cli"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/walktalkmeditate/talk-cli/releases/download/v0.3.0/talk-aarch64-apple-darwin.tar.gz"
      sha256 "3c9a814345fd497e93f0b44d57109cff7500870220f0ed4b1d2b521bde50e973"
    end
    on_intel do
      url "https://github.com/walktalkmeditate/talk-cli/releases/download/v0.3.0/talk-x86_64-apple-darwin.tar.gz"
      sha256 "f27ae7202ea35d786b3d63fc13c25adb7f7cfa94dcb619108fb013503a912dc1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/walktalkmeditate/talk-cli/releases/download/v0.3.0/talk-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1be4a70b10f6708ac64018f0380b8254daec1472c1cb6002cf12f3283fd2910f"
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

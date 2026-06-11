class Talk < Formula
  desc "Terminal listening companion — speak a reflection, and it settles into a quiet file"
  homepage "https://github.com/walktalkmeditate/talk-cli"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/walktalkmeditate/talk-cli/releases/download/v0.2.0/talk-aarch64-apple-darwin.tar.gz"
      sha256 "76db2e7d955c3eaa930b585c1a2ad5b10757cb27c142949874eb7ceaaef933f4"
    end
    on_intel do
      url "https://github.com/walktalkmeditate/talk-cli/releases/download/v0.2.0/talk-x86_64-apple-darwin.tar.gz"
      sha256 "f56e41a0497aade63f4fc6208d21e1bc645ef3d9f9a1b3d9b8542df1c35c1a40"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/walktalkmeditate/talk-cli/releases/download/v0.2.0/talk-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c9d3071048c9d0d70e4eea7eea8a94bf4e9728ecec3d8b1a00b72e51c15452c2"
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
